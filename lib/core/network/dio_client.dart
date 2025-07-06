import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:event_check_in/core/config/app_config.dart';
import 'package:event_check_in/core/errors/exceptions.dart';
import 'package:event_check_in/core/storage/secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class DioClient {
  DioClient(this._appConfig, this._secureStorage) {
    _dio = Dio(
      BaseOptions(
        baseUrl: _appConfig.apiBaseUrl,
        connectTimeout: Duration(milliseconds: _appConfig.connectionTimeout),
        receiveTimeout: Duration(milliseconds: _appConfig.receiveTimeout),
      ),
    );

    if (_appConfig.enableLogging) {
      _dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
    }

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Check for internet connectivity
          final connectivityResult = await Connectivity().checkConnectivity();
          if (connectivityResult.contains(ConnectivityResult.none)) {
            return handler.reject(
              DioException(
                requestOptions: options,
                error: 'No internet connection',
                type: DioExceptionType.connectionError,
              ),
            );
          }

          // Add auth token if available
          final token = await _secureStorage.getAccessToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(options);
        },
        onError: (error, handler) async {
          // Handle token refresh if needed
          if (error.response?.statusCode == 401) {
            try {
              // Try to refresh token and retry
              final refreshToken = await _secureStorage.getRefreshToken();
              if (refreshToken != null) {
                // Create a new DioClient instance without auth interceptor for refresh call
                final refreshDio = Dio(BaseOptions(baseUrl: _appConfig.apiBaseUrl));
                final refreshResponse = await refreshDio.post('/api/auth/refresh', 
                  data: {'refresh_token': refreshToken});
                
                if (refreshResponse.statusCode == 200) {
                  final data = refreshResponse.data as Map<String, dynamic>;
                  await _secureStorage.saveAccessToken(data['access_token']);
                  await _secureStorage.saveRefreshToken(data['refresh_token']);
                  
                  // Retry the original request with new token
                  error.requestOptions.headers['Authorization'] = 'Bearer ${data['access_token']}';
                  return handler.resolve(await _retry(error.requestOptions));
                }
              }
            } catch (e) {
              // Refresh failed, clear tokens
              await _secureStorage.clearAuthData();
            }
          }
          return handler.next(error);
        },
      ),
    );
  }
  
  late final Dio _dio;
  final AppConfig _appConfig;
  final SecureStorage _secureStorage;

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    } on SocketException {
      throw NetworkException(message: 'No internet connection');
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    } on SocketException {
      throw NetworkException(message: 'No internet connection');
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    } on SocketException {
      throw NetworkException(message: 'No internet connection');
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    } on SocketException {
      throw NetworkException(message: 'No internet connection');
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.patch<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    } on SocketException {
      throw NetworkException(message: 'No internet connection');
    } catch (e) {
      throw UnknownException(message: e.toString());
    }
  }

  Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException(message: 'Connection timeout');
      case DioExceptionType.connectionError:
        return NetworkException(message: 'No internet connection');
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final data = error.response?.data;

        var message = 'Something went wrong';
        if (data != null && data is Map<String, dynamic>) {
          message = data['message'] as String? ?? message;
        }

        if (statusCode == 401 || statusCode == 403) {
          return AuthException(
            message: message,
            statusCode: statusCode,
          );
        } else if (statusCode == 422) {
          Map<String, List<String>>? errors;
          if (data != null &&
              data is Map<String, dynamic> &&
              data['errors'] != null) {
            final errorsMap = data['errors'] as Map<String, dynamic>;
            errors = {};
            errorsMap.forEach((key, value) {
              if (value is List) {
                errors![key] =
                    List<String>.from(value.map((e) => e.toString()));
              }
            });
          }
          return ValidationException(
            message: message,
            errors: errors,
          );
        } else {
          return ServerException(
            message: message,
            statusCode: statusCode,
          );
        }
      case DioExceptionType.cancel:
        return ServerException(message: 'Request cancelled');
      case DioExceptionType.unknown:
      default:
        return UnknownException(
          message: error.message ?? 'Unknown error occurred',
        );
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return _dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}

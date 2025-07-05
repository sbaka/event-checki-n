import 'package:event_check_in/core/errors/exceptions.dart';
import 'package:event_check_in/core/network/dio_client.dart';
import 'package:event_check_in/features/auth/data/models/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({
    required String email,
    required String password,
  });

  Future<void> logout();

  Future<UserModel> getCurrentUser();

  Future<bool> refreshToken();

  Future<UserModel> updateProfile({
    required String name,
    String? profileImage,
  });

  Future<bool> changePassword({
    required String currentPassword,
    required String newPassword,
  });
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._dioClient);
  final DioClient _dioClient;

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dioClient.post<Map<String, dynamic>>(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      final data = response.data;
      if (data == null) {
        throw ServerException(message: 'Failed to login');
      }

      // Extract tokens from response
      final accessToken = data['access_token'] as String;
      final refreshToken = data['refresh_token'] as String;

      // Save tokens using secure storage
      // await _secureStorage.saveAccessToken(_accessToken);
      // await _secureStorage.saveRefreshToken(_refreshToken);

      // Extract user data
      final userData = data['user'] as Map<String, dynamic>;
      return UserModel.fromJson(userData);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _dioClient.post<void>(
        '/auth/logout',
      );

      // Clear tokens
      // await _secureStorage.clearAuthData();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> getCurrentUser() async {
    try {
      final response = await _dioClient.get<Map<String, dynamic>>(
        '/auth/me',
      );

      final data = response.data;
      if (data == null) {
        throw ServerException(message: 'Failed to get user data');
      }

      return UserModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> refreshToken() async {
    try {
      // Get refresh token
      // final refreshToken = await _secureStorage.getRefreshToken();
      // if (refreshToken == null) {
      //   throw ServerException(message: 'No refresh token found');
      // }

      final response = await _dioClient.post<Map<String, dynamic>>(
        '/auth/refresh',
        // data: {
        //   'refresh_token': refreshToken,
        // },
      );

      final data = response.data;
      if (data == null) {
        throw ServerException(message: 'Failed to refresh token');
      }

      // Extract new tokens
      final accessToken = data['access_token'] as String;
      final newRefreshToken = data['refresh_token'] as String;

      // Save new tokens
      // await _secureStorage.saveAccessToken(_accessToken);
      // await _secureStorage.saveRefreshToken(_newRefreshToken);

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<UserModel> updateProfile({
    required String name,
    String? profileImage,
  }) async {
    try {
      final data = <String, dynamic>{
        'name': name,
      };

      if (profileImage != null) {
        data['profile_image'] = profileImage;
      }

      final response = await _dioClient.put<Map<String, dynamic>>(
        '/auth/profile',
        data: data,
      );

      final responseData = response.data;
      if (responseData == null) {
        throw ServerException(message: 'Failed to update profile');
      }

      return UserModel.fromJson(responseData);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      await _dioClient.put<void>(
        '/auth/password',
        data: {
          'current_password': currentPassword,
          'new_password': newPassword,
          'new_password_confirmation': newPassword,
        },
      );

      return true;
    } catch (e) {
      rethrow;
    }
  }
}

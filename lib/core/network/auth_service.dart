import 'package:injectable/injectable.dart';
import 'package:event_check_in/core/network/api_models.dart';
import 'package:event_check_in/core/network/dio_client.dart';
import 'package:event_check_in/core/storage/secure_storage.dart';

@singleton
class AuthService {
  AuthService(this._dioClient, this._secureStorage);

  final DioClient _dioClient;
  final SecureStorage _secureStorage;

  /// Login with email and password
  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    final request = LoginRequest(email: email, password: password);
    
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/api/auth/login',
      data: request.toJson(),
    );

    final loginResponse = LoginResponse.fromJson(response.data!);
    
    // Store tokens securely
    await _secureStorage.saveAccessToken(loginResponse.accessToken);
    await _secureStorage.saveRefreshToken(loginResponse.refreshToken);
    
    return loginResponse;
  }

  /// Refresh access token
  Future<RefreshTokenResponse> refreshToken() async {
    final refreshToken = await _secureStorage.getRefreshToken();
    if (refreshToken == null) {
      throw Exception('No refresh token available');
    }

    final request = RefreshTokenRequest(refreshToken: refreshToken);
    
    final response = await _dioClient.post<Map<String, dynamic>>(
      '/api/auth/refresh',
      data: request.toJson(),
    );

    final refreshResponse = RefreshTokenResponse.fromJson(response.data!);
    
    // Store new tokens
    await _secureStorage.saveAccessToken(refreshResponse.accessToken);
    await _secureStorage.saveRefreshToken(refreshResponse.refreshToken);
    
    return refreshResponse;
  }

  /// Get current user info
  Future<UserResponse> getCurrentUser() async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      '/api/auth/me',
    );

    return UserResponse.fromJson(response.data!);
  }

  /// Logout user
  Future<void> logout() async {
    try {
      await _dioClient.post('/api/auth/logout');
    } catch (e) {
      // Continue with logout even if API call fails
    }
    
    // Clear stored tokens
    await _secureStorage.clearAuthData();
  }

  /// Get stored access token
  Future<String?> getAccessToken() async {
    return await _secureStorage.getAccessToken();
  }

  /// Get stored refresh token
  Future<String?> getRefreshToken() async {
    return await _secureStorage.getRefreshToken();
  }

  /// Check if user is authenticated
  Future<bool> isAuthenticated() async {
    final accessToken = await getAccessToken();
    return accessToken != null;
  }

  /// Clear all authentication data
  Future<void> clearAuth() async {
    await _secureStorage.clearAuthData();
  }
}
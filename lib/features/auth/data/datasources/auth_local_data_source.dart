import 'dart:convert';

import 'package:event_check_in/core/errors/exceptions.dart';
import 'package:event_check_in/core/storage/secure_storage.dart';
import 'package:event_check_in/features/auth/data/models/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheUser(UserModel user);
  Future<UserModel?> getLastUser();
  Future<void> clearUser();
  Future<bool> hasToken();
  Future<String?> getToken();
  Future<void> saveToken(String token);
  Future<void> saveRefreshToken(String token);
  Future<String?> getRefreshToken();
  Future<void> clearTokens();
}

@Injectable(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const String _userKey = 'user';
  static const String _tokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';

  final SecureStorage _secureStorage;

  AuthLocalDataSourceImpl(this._secureStorage);

  @override
  Future<void> cacheUser(UserModel user) async {
    try {
      final userJson = jsonEncode(user.toJson());
      await _secureStorage.saveSecureData(_userKey, userJson);
    } catch (e) {
      throw CacheException(message: 'Failed to cache user');
    }
  }

  @override
  Future<UserModel?> getLastUser() async {
    try {
      final userJson = await _secureStorage.getSecureData(_userKey);
      if (userJson == null) {
        return null;
      }
      final userMap = jsonDecode(userJson) as Map<String, dynamic>;
      return UserModel.fromJson(userMap);
    } catch (e) {
      throw CacheException(message: 'Failed to get cached user');
    }
  }

  @override
  Future<void> clearUser() async {
    try {
      await _secureStorage.deleteSecureData(_userKey);
    } catch (e) {
      throw CacheException(message: 'Failed to clear user');
    }
  }

  @override
  Future<bool> hasToken() async {
    try {
      final token = await _secureStorage.getSecureData(_tokenKey);
      return token != null;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String?> getToken() async {
    try {
      return _secureStorage.getSecureData(_tokenKey);
    } catch (e) {
      throw CacheException(message: 'Failed to get token');
    }
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      await _secureStorage.saveSecureData(_tokenKey, token);
    } catch (e) {
      throw CacheException(message: 'Failed to save token');
    }
  }

  @override
  Future<void> saveRefreshToken(String token) async {
    try {
      await _secureStorage.saveSecureData(_refreshTokenKey, token);
    } catch (e) {
      throw CacheException(message: 'Failed to save refresh token');
    }
  }

  @override
  Future<String?> getRefreshToken() async {
    try {
      return _secureStorage.getSecureData(_refreshTokenKey);
    } catch (e) {
      throw CacheException(message: 'Failed to get refresh token');
    }
  }

  @override
  Future<void> clearTokens() async {
    try {
      await _secureStorage.deleteSecureData(_tokenKey);
      await _secureStorage.deleteSecureData(_refreshTokenKey);
    } catch (e) {
      throw CacheException(message: 'Failed to clear tokens');
    }
  }
}

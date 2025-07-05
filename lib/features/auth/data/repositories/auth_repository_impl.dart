import 'package:dartz/dartz.dart';
import 'package:event_check_in/core/errors/exceptions.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/core/network/connectivity_service.dart';
import 'package:event_check_in/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:event_check_in/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:event_check_in/features/auth/data/models/user_model.dart';
import 'package:event_check_in/features/auth/domain/entities/user.dart';
import 'package:event_check_in/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  final ConnectivityService _connectivityService;

  AuthRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._connectivityService,
  );

  @override
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  }) async {
    if (!await _connectivityService.checkConnection()) {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }

    try {
      final userModel = await _remoteDataSource.login(
        email: email,
        password: password,
      );

      await _localDataSource.cacheUser(userModel);
      return Right(userModel.toEntity());
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on AuthException catch (e) {
      return Left(
        AuthFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      if (await _connectivityService.checkConnection()) {
        await _remoteDataSource.logout();
      }

      await _localDataSource.clearUser();
      await _localDataSource.clearTokens();
      return const Right(null);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> getCurrentUser() async {
    try {
      // Try to get user from remote if connected
      if (await _connectivityService.checkConnection()) {
        try {
          final userModel = await _remoteDataSource.getCurrentUser();
          await _localDataSource.cacheUser(userModel);
          return Right(userModel.toEntity());
        } on ServerException catch (_) {
          // If remote fails, try to get from local
          final userModel = await _localDataSource.getLastUser();
          if (userModel != null) {
            return Right(userModel.toEntity());
          }
          return const Left(AuthFailure(message: 'User not authenticated'));
        }
      } else {
        // If offline, try to get from local
        final userModel = await _localDataSource.getLastUser();
        if (userModel != null) {
          return Right(userModel.toEntity());
        }
        return const Left(AuthFailure(message: 'User not authenticated'));
      }
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      return _localDataSource.hasToken();
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<Failure, bool>> refreshToken() async {
    if (!await _connectivityService.checkConnection()) {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }

    try {
      final result = await _remoteDataSource.refreshToken();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(
        message: e.message,
        statusCode: e.statusCode,
      ));
    } on AuthException catch (e) {
      return Left(
        AuthFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> updateProfile({
    required String name,
    String? profileImage,
  }) async {
    if (!await _connectivityService.checkConnection()) {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }

    try {
      final userModel = await _remoteDataSource.updateProfile(
        name: name,
        profileImage: profileImage,
      );

      await _localDataSource.cacheUser(userModel);
      return Right(userModel.toEntity());
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    if (!await _connectivityService.checkConnection()) {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }

    try {
      final result = await _remoteDataSource.changePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on ValidationException catch (e) {
      return Left(ValidationFailure(
        message: e.message,
        errors: e.errors,
      ));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}

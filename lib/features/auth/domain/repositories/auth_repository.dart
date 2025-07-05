import 'package:dartz/dartz.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  /// Authenticates a user with email and password
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  });

  /// Logs out the current user
  Future<Either<Failure, void>> logout();

  /// Gets the current authenticated user
  Future<Either<Failure, User>> getCurrentUser();

  /// Checks if the user is authenticated
  Future<bool> isAuthenticated();

  /// Refreshes the authentication token
  Future<Either<Failure, bool>> refreshToken();

  /// Updates the user profile
  Future<Either<Failure, User>> updateProfile({
    required String name,
    String? profileImage,
  });

  /// Changes the user password
  Future<Either<Failure, bool>> changePassword({
    required String currentPassword,
    required String newPassword,
  });
}

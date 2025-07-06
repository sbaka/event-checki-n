import 'package:dartz/dartz.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/auth/domain/entities/user.dart';
import 'package:event_check_in/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckAuthStatusUseCase {
  CheckAuthStatusUseCase(this._authRepository);
  final AuthRepository _authRepository;

  Future<Either<Failure, User?>> call() async {
    // First check if we have a stored token
    final isAuthenticated = await _authRepository.isAuthenticated();
    
    if (!isAuthenticated) {
      return const Left(AuthFailure(message: 'User not authenticated'));
    }

    // If we have a token, try to get current user
    final result = await _authRepository.getCurrentUser();
    
    return result.fold(
      (failure) async {
        // If getting current user fails, try to refresh token
        final refreshResult = await _authRepository.refreshToken();
        
        return refreshResult.fold(
          (refreshFailure) => Left(failure), // Return original failure if refresh also fails
          (refreshSuccess) {
            if (refreshSuccess) {
              // If refresh succeeded, try getting current user again
              return _authRepository.getCurrentUser();
            } else {
              return Left(failure);
            }
          },
        );
      },
      (user) => Right(user),
    );
  }
}
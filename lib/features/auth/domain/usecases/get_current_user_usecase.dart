import 'package:dartz/dartz.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/auth/domain/entities/user.dart';
import 'package:event_check_in/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentUserUseCase {
  final AuthRepository _authRepository;

  GetCurrentUserUseCase(this._authRepository);

  Future<Either<Failure, User>> call() async {
    return _authRepository.getCurrentUser();
  }
}

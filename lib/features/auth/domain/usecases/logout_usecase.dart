import 'package:dartz/dartz.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._authRepository);
  final AuthRepository _authRepository;

  Future<Either<Failure, void>> call() async {
    return _authRepository.logout();
  }
}

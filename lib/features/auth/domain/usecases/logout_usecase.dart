import 'package:dartz/dartz.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  final AuthRepository _authRepository;

  LogoutUseCase(this._authRepository);

  Future<Either<Failure, void>> call() async {
    return _authRepository.logout();
  }
}

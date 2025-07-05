import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:event_check_in/core/errors/failures.dart';
import 'package:event_check_in/features/auth/domain/entities/user.dart';
import 'package:event_check_in/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase {
  LoginUseCase(this._authRepository);
  final AuthRepository _authRepository;

  Future<Either<Failure, User>> call(LoginParams params) async {
    return _authRepository.login(
      email: params.email,
      password: params.password,
    );
  }
}

class LoginParams extends Equatable {
  const LoginParams({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}

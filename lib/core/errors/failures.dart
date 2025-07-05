import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final int? statusCode;

  const Failure({
    required this.message,
    this.statusCode,
  });

  @override
  List<Object?> get props => [message, statusCode];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required String message,
    int? statusCode,
  }) : super(
          message: message,
          statusCode: statusCode,
        );
}

class CacheFailure extends Failure {
  const CacheFailure({
    required String message,
  }) : super(
          message: message,
        );
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    required String message,
  }) : super(
          message: message,
        );
}

class AuthFailure extends Failure {
  const AuthFailure({
    required String message,
    int? statusCode,
  }) : super(
          message: message,
          statusCode: statusCode,
        );
}

class ValidationFailure extends Failure {
  final Map<String, List<String>>? errors;

  const ValidationFailure({
    required String message,
    this.errors,
  }) : super(
          message: message,
        );

  @override
  List<Object?> get props => [...super.props, errors];
}

class UnknownFailure extends Failure {
  const UnknownFailure({
    required String message,
  }) : super(
          message: message,
        );
}

class LocalFailure extends Failure {
  const LocalFailure(String message) : super(message: message);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure(String message) : super(message: message);
}

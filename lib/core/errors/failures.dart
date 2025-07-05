import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
    this.statusCode,
  });
  final String message;
  final int? statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    super.statusCode,
  });
}

class CacheFailure extends Failure {
  const CacheFailure({
    required super.message,
  });
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    required super.message,
  });
}

class AuthFailure extends Failure {
  const AuthFailure({
    required super.message,
    super.statusCode,
  });
}

class ValidationFailure extends Failure {
  const ValidationFailure({
    required super.message,
    this.errors,
  });
  final Map<String, List<String>>? errors;

  @override
  List<Object?> get props => [...super.props, errors];
}

class UnknownFailure extends Failure {
  const UnknownFailure({
    required super.message,
  });
}

class LocalFailure extends Failure {
  const LocalFailure(String message) : super(message: message);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure(String message) : super(message: message);
}

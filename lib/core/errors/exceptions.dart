class ServerException implements Exception {
  ServerException({
    required this.message,
    this.statusCode,
  });
  final String message;
  final int? statusCode;
}

class CacheException implements Exception {
  CacheException({
    required this.message,
  });
  final String message;
}

class NetworkException implements Exception {
  NetworkException({
    required this.message,
  });
  final String message;
}

class AuthException implements Exception {
  AuthException({
    required this.message,
    this.statusCode,
  });
  final String message;
  final int? statusCode;
}

class ValidationException implements Exception {
  ValidationException({
    required this.message,
    this.errors,
  });
  final String message;
  final Map<String, List<String>>? errors;
}

class UnknownException implements Exception {
  UnknownException({
    required this.message,
  });
  final String message;
}

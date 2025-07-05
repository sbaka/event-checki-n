import 'package:injectable/injectable.dart';

enum Environment {
  dev,
  staging,
  prod,
}

@injectable
class AppConfig {
  factory AppConfig.staging() => AppConfig(
        apiBaseUrl: 'https://staging-api.eventcheckin.com/v1',
        enableLogging: true,
        connectionTimeout: 30000,
        receiveTimeout: 30000,
      );

  AppConfig({
    required this.apiBaseUrl,
    required this.enableLogging,
    required this.connectionTimeout,
    required this.receiveTimeout,
  });

  factory AppConfig.development() => AppConfig(
        apiBaseUrl: 'https://dev-api.eventcheckin.com/v1',
        enableLogging: true,
        connectionTimeout: 30000,
        receiveTimeout: 30000,
      );

  factory AppConfig.production() => AppConfig(
        apiBaseUrl: 'https://api.eventcheckin.com/v1',
        enableLogging: false,
        connectionTimeout: 30000,
        receiveTimeout: 30000,
      );
  final String apiBaseUrl;
  final bool enableLogging;
  final int connectionTimeout;
  final int receiveTimeout;

  @factoryMethod
  static AppConfig fromEnvironment(String env) {
    switch (env) {
      case 'dev':
        return AppConfig.development();
      case 'staging':
        return AppConfig.staging();
      case 'prod':
        return AppConfig.production();
      default:
        return AppConfig.development();
    }
  }
}

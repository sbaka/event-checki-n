import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:event_check_in/core/di/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies(String environment) async {
  // Register the current environment so it can be injected elsewhere (e.g. AppConfig.fromEnvironment)
  if (!getIt.isRegistered<String>()) {
    getIt.registerSingleton<String>(environment);
  }

  // Initialize generated dependency registrations
  await getIt.init(environment: environment);
}

abstract class Env {
  static const dev = 'dev';
  static const staging = 'staging';
  static const prod = 'prod';
}

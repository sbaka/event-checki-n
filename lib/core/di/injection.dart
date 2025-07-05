import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies(String environment) async =>
    getIt.init(environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const staging = 'staging';
  static const prod = 'prod';
}

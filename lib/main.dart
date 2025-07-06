import 'package:event_check_in/core/config/app_theme.dart';
import 'package:event_check_in/core/di/injection.dart';
import 'package:event_check_in/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  // Initialize Hive
  await Hive.initFlutter();

  // Initialize dependency injection
  await configureDependencies(Env.dev);

  runApp(EventCheckInApp());
}

class EventCheckInApp extends StatelessWidget {
  EventCheckInApp({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Event Check-In',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // ignore: avoid_redundant_argument_values
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}

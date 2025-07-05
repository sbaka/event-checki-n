import 'package:auto_route/auto_route.dart';
import 'package:event_check_in/core/di/injection.dart';
import 'package:event_check_in/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:event_check_in/features/auth/presentation/bloc/auth_event.dart';
import 'package:event_check_in/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(const AuthEvent.checkAuthStatus()),
      child: Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              authenticated: (user) {
                // Navigate to dashboard
                // context.router.replace(const DashboardRoute());
              },
              unauthenticated: () {
                // Navigate to login
                // context.router.replace(const LoginRoute());
              },
              error: (message) {
                // Navigate to login
                // context.router.replace(const LoginRoute());
              },
              orElse: () {},
            );
          },
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.event,
                  size: 100,
                  color: Colors.purple,
                ),
                SizedBox(height: 24),
                Text(
                  'Event Check-In',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 48),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

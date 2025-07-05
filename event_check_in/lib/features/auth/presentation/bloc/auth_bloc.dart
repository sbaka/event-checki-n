import 'package:event_check_in/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:event_check_in/features/auth/domain/usecases/login_usecase.dart';
import 'package:event_check_in/features/auth/domain/usecases/logout_usecase.dart';
import 'package:event_check_in/features/auth/presentation/bloc/auth_event.dart';
import 'package:event_check_in/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;

  AuthBloc(
    this._getCurrentUserUseCase,
    this._loginUseCase,
    this._logoutUseCase,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        checkAuthStatus: (e) => _checkAuthStatus(e, emit),
        login: (e) => _login(e, emit),
        logout: (e) => _logout(e, emit),
        updateProfile: (e) => _updateProfile(e, emit),
      );
    });
  }

  Future<void> _checkAuthStatus(
      _CheckAuthStatus event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _getCurrentUserUseCase();
    result.fold(
      (failure) => emit(const AuthState.unauthenticated()),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _login(_Login event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _loginUseCase(
      LoginParams(
        email: event.email,
        password: event.password,
      ),
    );
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _logout(_Logout event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _logoutUseCase();
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }

  Future<void> _updateProfile(
      _UpdateProfile event, Emitter<AuthState> emit) async {
    // This would be implemented with a separate UpdateProfileUseCase
    // For now, we'll just emit the current state
    emit(state);
  }
}

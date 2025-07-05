import 'package:event_check_in/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:event_check_in/features/auth/domain/usecases/login_usecase.dart';
import 'package:event_check_in/features/auth/domain/usecases/logout_usecase.dart';
import 'package:event_check_in/features/auth/presentation/bloc/auth_event.dart';
import 'package:event_check_in/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._getCurrentUserUseCase,
    this._loginUseCase,
    this._logoutUseCase,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      event.map(
        checkAuthStatus: (_) => _checkAuthStatus(emit),
        login: (e) => _login(e.email, e.password, emit),
        logout: (_) => _logout(emit),
        updateProfile: (e) => _updateProfile(e.name, e.profileImage, emit),
      );
    });
  }
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;

  Future<void> _checkAuthStatus(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _getCurrentUserUseCase();
    result.fold(
      (failure) => emit(const AuthState.unauthenticated()),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _login(
    String email,
    String password,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _loginUseCase(
      LoginParams(
        email: email,
        password: password,
      ),
    );
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _logout(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _logoutUseCase();
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }

  Future<void> _updateProfile(
    String name,
    String? profileImage,
    Emitter<AuthState> emit,
  ) async {
    // This would be implemented with a separate UpdateProfileUseCase
    // For now, we'll just emit the current state
    emit(state);
  }
}

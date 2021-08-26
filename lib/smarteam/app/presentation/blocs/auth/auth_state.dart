part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.notAuthorized() = AuthStateNotAuthorized;

  const factory AuthState.loginInProgress() = AuthstateLoginInProgress;

  const factory AuthState.loginSuccess() = AuthStateLoginSuccess;

  const factory AuthState.loginFailure() = AuthStateLoginFailure;

  const factory AuthState.logoutInProgress() = AuthStateLogoutInProgress;

  const factory AuthState.logoutSuccess() = AuthStateLogoutSuccess;

  const factory AuthState.logoutFailure() = AuthStateLogoutFailure;
}
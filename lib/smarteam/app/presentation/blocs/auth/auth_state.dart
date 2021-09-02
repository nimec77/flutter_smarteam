part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.notAuthorized() = AuthStateNotAuthorized;

  const factory AuthState.loginInProgress({required bool showCancel}) = AuthstateLoginInProgress;

  const factory AuthState.loginSuccess() = AuthStateLoginSuccess;

  const factory AuthState.loginFailure(Error error) = AuthStateLoginFailure;

  const factory AuthState.logoutInProgress() = AuthStateLogoutInProgress;

  const factory AuthState.logoutFailure(Error error) = AuthStateLogoutFailure;
}
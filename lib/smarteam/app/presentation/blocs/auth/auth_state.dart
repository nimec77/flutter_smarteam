part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.notAuthorized() = AuthStateNotAuthorized;

  const factory AuthState.loginInProgress({required bool showCancel}) = AuthstateLoginInProgress;

  const factory AuthState.loginSuccess(Credential credential) = AuthStateLoginSuccess;

  const factory AuthState.loginCancelSuccess() = AuthStateLoginCancelSuccess;

  const factory AuthState.loginFailure(SmarteamUserError error) = AuthStateLoginFailure;

  const factory AuthState.logoutInProgress() = AuthStateLogoutInProgress;

  const factory AuthState.logoutFailure(SmarteamUserError error) = AuthStateLogoutFailure;
}
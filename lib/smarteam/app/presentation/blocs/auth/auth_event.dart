part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginStarted({required String username, required String password}) = AuthEventLoginStarted;

  const factory AuthEvent.loginSuccessful() = AuthEventLoginSuccessful;

  const factory AuthEvent.loginFailed(SmarteamUserError error)  = AuthEventLoginFailed;

  const factory AuthEvent.loginCanceled() = AuthEventLoginCanceled;

  const factory AuthEvent.shownCancel() = AuthEventShownCancel;

  const factory AuthEvent.logoutStarted() = AuthEventLogoutStarted;
}

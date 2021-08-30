part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginStarted({required String username, required String password}) = AuthEventLoginStarted;

  const factory AuthEvent.logoutStarted() = AuthEventLogoutStarted;
}

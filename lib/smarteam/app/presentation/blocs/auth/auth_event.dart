part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginStarted() = AuthEventLoginStarted;

  const factory AuthEvent.logoutStarted() = AuthEventLogoutStarted;
}
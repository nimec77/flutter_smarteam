import 'package:flutter_smarteam/smarteam/app/domain/errors/credential_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'smarteam_user_error.freezed.dart';

@freezed
class SmarteamUserError with _$SmarteamUserError {
  const factory SmarteamUserError.login(Error error) = SmarteamUserErrorLogin;

  const factory SmarteamUserError.logout(Error error) = SmarteamUserErrorLogout;

  const factory SmarteamUserError.credential(CredentialError error) = SmarteamUserErrorCredential;
}
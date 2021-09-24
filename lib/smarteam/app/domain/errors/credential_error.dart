import 'package:freezed_annotation/freezed_annotation.dart';

part 'credential_error.freezed.dart';

@freezed
class CredentialError with _$CredentialError {
  const factory CredentialError.sid(Error error) = CredentialErrorSid;

  const factory CredentialError.database(Error error) = CredentialErrorDatabase;

  const factory CredentialError.encode(Error error) = CredentialErrorEncode;

  const factory CredentialError.decode(Error error) = CredentialErrorDecode;
}
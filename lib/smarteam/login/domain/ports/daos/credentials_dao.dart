import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/credential_error.dart';

abstract class CredentialsDao {
  Future<Either<CredentialError, int>> saveCredential(Credential credential);

  Future<Either<CredentialError, Credential>> credentialBySid(String sid);
}
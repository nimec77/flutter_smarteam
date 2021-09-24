import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';

abstract class CredentialsDao {
  Future<Either<Exception, int>> saveCredential(Credential credential);

  Future<Either<Exception, Credential>> credentialBySid(String sid);
}
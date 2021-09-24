import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/daos/credentials_dao.dart';

class CredentialUseCase {
  CredentialUseCase(this.credentialsDao);

  final CredentialsDao credentialsDao;

  Future<Either<Exception, int>> saveCredential(Credential credential) async {
    return credentialsDao.saveCredential(credential);
  }

  Future<Either<Exception, Credential>> credentialBySid(String sid) async {
    return credentialsDao.credentialBySid(sid);
  }
}

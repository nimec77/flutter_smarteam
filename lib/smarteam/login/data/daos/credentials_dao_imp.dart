// ignore_for_file: avoid_catching_errors
import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/credential_error.dart';
import 'package:flutter_smarteam/smarteam/login/domain/entities/credentials.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/daos/credentials_dao.dart';
import 'package:moor/moor.dart';

part 'credentials_dao_imp.g.dart';

@UseDao(tables: [Credentials])
class CredentialsDaoImp extends DatabaseAccessor<AppDatabase> with _$CredentialsDaoImpMixin implements CredentialsDao {
  CredentialsDaoImp(this.appDatabase) : super(appDatabase);

  final AppDatabase appDatabase;

  @override
  Future<Either<CredentialError, Credential>> credentialBySid(String sid) async {
    try {
      final result = select(credentials)..where((tbl) => tbl.sid.equals(sid));
      return Right(await result.getSingle());
    } on StateError catch(error) {
      return Left(CredentialError.database(error));
    }
  }

  @override
  Future<Either<CredentialError, int>> saveCredential(Credential credential) async {
    try {
      final result = await into(credentials).insertOnConflictUpdate(credential);
      return Right(result);
    } on StateError catch(error) {
      return Left(CredentialError.database(error));
    }
  }
}

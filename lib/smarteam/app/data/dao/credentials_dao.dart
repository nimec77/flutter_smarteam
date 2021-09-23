import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';
import 'package:flutter_smarteam/smarteam/app/domain/entities/credentials.dart';
import 'package:moor/moor.dart';

part 'credentials_dao.g.dart';

@UseDao(tables: [Credentials])
class CredentialsDao extends DatabaseAccessor<AppDatabase> with _$CredentialsDaoMixin {
  CredentialsDao(this.appDatabase) : super(appDatabase);

  final AppDatabase appDatabase;

  Future<int> saveCredential(Credential credential) => into(credentials).insertOnConflictUpdate(credential);
}

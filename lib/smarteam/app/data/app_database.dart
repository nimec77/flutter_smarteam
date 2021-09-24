
import 'package:flutter_smarteam/smarteam/login/data/daos/credentials_dao_imp.dart';
import 'package:flutter_smarteam/smarteam/login/domain/entities/credentials.dart';
import 'package:moor/moor.dart';

part 'app_database.g.dart';

@UseMoor(tables: [Credentials], daos: [CredentialsDaoImp])
class AppDatabase extends _$AppDatabase {
  AppDatabase.connect(DatabaseConnection databaseConnection) : super.connect(databaseConnection);

  @override
  int get schemaVersion => 1;
}
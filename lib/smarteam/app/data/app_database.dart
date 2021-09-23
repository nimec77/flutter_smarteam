
import 'package:flutter_smarteam/smarteam/app/data/dao/credentials_dao.dart';
import 'package:flutter_smarteam/smarteam/app/domain/entities/credentials.dart';
import 'package:moor/moor.dart';

part 'app_database.g.dart';

@UseMoor(tables: [Credentials], daos: [CredentialsDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase.connect(DatabaseConnection databaseConnection) : super.connect(databaseConnection);

  @override
  int get schemaVersion => 1;
}
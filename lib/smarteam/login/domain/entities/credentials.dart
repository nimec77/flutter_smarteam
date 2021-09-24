import 'package:moor/moor.dart';

@DataClassName('Credential')
class Credentials extends Table {
  TextColumn get sid => text().withLength(min: 1, max:256)();
  TextColumn get username => text().withLength(min: 3, max: 100)();
  TextColumn get password => text().withLength(min: 4, max: 256)();

  @override
  Set<Column> get primaryKey => {sid};
}


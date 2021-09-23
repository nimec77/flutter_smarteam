import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

import 'package:flutter_smarteam/smarteam/app/data/constants.dart';
import 'package:flutter_smarteam/smarteam/app/data/pods/isolate_start_request.dart';
import 'package:moor/ffi.dart';
import 'package:moor/isolate.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/open.dart';

class SqliteProvider {
  factory SqliteProvider() {
    return _sqliteProvider;
  }

  SqliteProvider._();

  static final SqliteProvider _sqliteProvider = SqliteProvider._();

  late final DatabaseConnection _databaseConnection;
  bool _initialized = false;

  DatabaseConnection get databaseConnection => _databaseConnection;

  Future<void> init() async {
    if (_initialized) {
      return;
    }
    _databaseConnection = DatabaseConnection.delayed(() async {
      final isolate = await _createMoorIsolate();
      return isolate.connect();
    }());
    _initialized = true;
  }

  Future<MoorIsolate> _createMoorIsolate() async {
    final receivePort = ReceivePort();

    final dir = await getApplicationDocumentsDirectory();
    final path = p.join(dir.path, kSqliteBasename);

    await Isolate.spawn(
      _startBackground,
      IsolateStartRequest(sendMoorIsolate: receivePort.sendPort, targetPath: path),
    );

    return await receivePort.first as MoorIsolate;
  }

  void _startBackground(IsolateStartRequest request) {
    open.overrideFor(OperatingSystem.windows, _openOnWindows);

    final executor = VmDatabase(File(request.targetPath), logStatements: true);

    final moorIsolate = MoorIsolate.inCurrent(() => DatabaseConnection.fromExecutor(executor));

    request.sendMoorIsolate.send(moorIsolate);
  }

  DynamicLibrary _openOnWindows() {
    return DynamicLibrary.open(kSqliteDll);
  }
}

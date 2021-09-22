
import 'dart:ffi';

import 'package:flutter_smarteam/constants.dart';
import 'package:sqlite3/open.dart';

void openSqlite() {
  open.overrideFor(OperatingSystem.windows, openOnWindows);
}

DynamicLibrary openOnWindows() {
  return DynamicLibrary.open(kSqliteDll);
}
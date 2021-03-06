// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smarteam/app/app.dart';
import 'package:flutter_smarteam/app/app_bloc_observer.dart';
import 'package:flutter_smarteam/smarteam/app/data/providers/sqlite_provider.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(App(sqliteProvider: SqliteProvider(), smarteam: const Smarteam())),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

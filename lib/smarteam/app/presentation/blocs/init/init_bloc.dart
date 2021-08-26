import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/pages/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'init_event.dart';

part 'init_state.dart';

part 'init_bloc.freezed.dart';

class InitBloc extends Bloc<InitEvent, InitState> {
  InitBloc({required this.smarteam}) : super(const InitState.notInit());

  final Smarteam smarteam;

  @override
  Stream<InitState> mapEventToState(InitEvent event) async* {
    yield* event.map(
      initStarted: _mapInitStartedToState,
      initCompleted: _mapInitCompletedToState,
      initTimeUp: _mapInitTimeUpToState,
      initExited: _mapInitExitedToState,
    );
  }

  Stream<InitState> _mapInitStartedToState(InitEvent event) async* {
    yield const InitState.initInProgress(0.1);
    final result = await smarteam.init();
    yield result.fold(
      (error) => InitState.initFailure(error),
      (initResult) {
        if (initResult) {
          return InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds);
        }
        return InitState.initFailure(Error());
      },
    );
  }

  Stream<InitState> _mapInitCompletedToState(InitEvent event) async* {
    yield InitState.initSuccess(smarteam);
  }

  Stream<InitState> _mapInitTimeUpToState(InitEvent event) async* {}

  Stream<InitState> _mapInitExitedToState(InitEvent event) async* {
    await SystemNavigator.pop(animated: true);
    exit(0);
  }
}
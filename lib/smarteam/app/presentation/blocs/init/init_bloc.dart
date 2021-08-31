import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_init_error.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/pages/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'init_bloc.freezed.dart';
part 'init_event.dart';
part 'init_state.dart';

class InitBloc extends Bloc<InitEvent, InitState> {
  InitBloc({required this.smarteam}) : super(const InitState.notInit());

  final Smarteam smarteam;
  bool _initialized = false;

  @override
  Stream<InitState> mapEventToState(InitEvent event) async* {
    yield* event.map(
      initStarted: _mapInitStartedToState,
      initEnded: _mapInitEndedToState,
      initTimeUp: _mapInitTimeUpToState,
      initExited: _mapInitExitedToState,
    );
  }

  Stream<InitState> _mapInitStartedToState(InitEvent event) async* {
    _initialized = false;
    yield const InitState.initInProgress(0.1);
    final result = await smarteam.init();
    await Future<void>.delayed(const Duration(seconds: 1));
    yield result.fold(
      (error) => InitState.initFailure(error),
      (initResult) {
        if (initResult) {
          _initialized = true;
          return InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds);
        }
        return InitState.initFailure(SmarteamInitError());
      },
    );
  }

  Stream<InitState> _mapInitEndedToState(InitEventEnded event) async* {
    if (state is! InitStateFailure) {
      yield _initialized ? const InitState.initSuccess() : const InitState.initTimeout();
    }
  }

  Stream<InitState> _mapInitTimeUpToState(InitEventTimeUp event) async* {
    yield const InitState.initTimeout();
  }

  Stream<InitState> _mapInitExitedToState(InitEventExited event) async* {
    await SystemNavigator.pop(animated: true);
    exit(0);
  }
}

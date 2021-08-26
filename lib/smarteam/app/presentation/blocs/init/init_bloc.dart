import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'init_event.dart';

part 'init_state.dart';

part 'init_bloc.freezed.dart';

class InitBloc extends Bloc<InitEvent, InitState> {
  InitBloc() : super(const InitState.notInit());

  @override
  Stream<InitState> mapEventToState(InitEvent event) async* {
    yield* event.map(
      initStarted: _mapInitStartedToState,
      initTimeUp: _mapInitTimeUpToState,
      initExited: _mapInitExitedToState,
    );
  }

  Stream<InitState> _mapInitStartedToState(InitEvent event) async* {}

  Stream<InitState> _mapInitTimeUpToState(InitEvent event) async* {}

  Stream<InitState> _mapInitExitedToState(InitEvent event) async* {
    await SystemNavigator.pop(animated: true);
    exit(0);
  }
}

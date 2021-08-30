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
      initEnded: _mapInitEndedToState,
      initTimeUp: _mapInitTimeUpToState,
      initExited: _mapInitExitedToState,
    );
  }

  Stream<InitState> _mapInitStartedToState(InitEvent event) async* {
    yield const InitState.initInProgress(0.1);
    unawaited(_timeout());
    final result = await smarteam.init();
    await Future<void>.delayed(const Duration(seconds: 1));
    yield result.fold(
      (error) => InitState.initFailure(error),
      (initResult) {
        if (initResult) {
          return InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds);
        }
        return InitState.initFailure(SmarteamError('Smarteam initialization error'));
      },
    );
  }

  Stream<InitState> _mapInitEndedToState(InitEventEnded event) async* {
    if (state is! InitStateFailure) {
      yield const InitState.initSuccess();
    }
  }

  Stream<InitState> _mapInitTimeUpToState(InitEventTimeUp event) async* {
    yield const InitState.initTimeout();
  }

  Stream<InitState> _mapInitExitedToState(InitEventExited event) async* {
    await SystemNavigator.pop(animated: true);
    exit(0);
  }

  Future<void> _timeout() async {
    await Future<void>.delayed(kLoadDuration);
    state.maybeWhen(
      initInProgress: (_) => add(const InitEvent.initTimeUp()),
      orElse: () {},
    );
  }
}

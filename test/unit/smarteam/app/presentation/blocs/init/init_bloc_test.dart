import 'package:bloc_test/bloc_test.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/pages/constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSmarteam extends Mock implements Smarteam {}

void main() {
  final mockSmarteam = MockSmarteam();

  group('InitBloc test', () {
    test('Initial state is notInit', () {
      expect(InitBloc(smarteam: mockSmarteam).state, equals(const InitState.notInit()));
    });

    blocTest<InitBloc, InitState>(
      'emits [InitState.initSuccess] when event InitEvent.initCompleted',
      build: () => InitBloc(smarteam: mockSmarteam),
      act: (initBloc) => initBloc.add(const InitEvent.initCompleted()),
      expect: () =>
      [
        InitState.initSuccess(mockSmarteam),
      ],
    );

    blocTest<InitBloc, InitState>(
      'emits [InitState.initTimeout] when event InitEvent.initTimeUp',
      build: () => InitBloc(smarteam: mockSmarteam),
      act: (initBloc) => initBloc.add(const InitEvent.initTimeUp()),
      expect: () =>
      [
        const InitState.initTimeout(),
      ],
    );

    blocTest<InitBloc, InitState>(
      'emits [InitState.initInProgress(0.1), InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds)]'
          ' when event InitEvent.initStarted success',
      build: () {
        when(mockSmarteam.init).thenAnswer((_) => Future.value(const Right<Error, bool>(true)));

        return InitBloc(smarteam: mockSmarteam);
      },
      act: (initBloc) => initBloc.add(const InitEvent.initStarted()),
      expect: () =>
      [
        const InitState.initInProgress(0.1),
        InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds),
      ],
    );

    blocTest<InitBloc, InitState>(
      "emits [InitState.initInProgress(0.1), InitState.initFailure(SmarteamError('Initialization error')]"
          ' when event InitEvent.initStarted failure',
      build: () {
        when(mockSmarteam.init).thenAnswer((_) => Future.value(const Right<Error, bool>(false)));

        return InitBloc(smarteam: mockSmarteam);
      },
      act: (initBloc) => initBloc.add(const InitEvent.initStarted()),
      expect: () =>
      [
        const InitState.initInProgress(0.1),
        InitState.initFailure(SmarteamError('Initialization error')),
      ],
    );
  });
}

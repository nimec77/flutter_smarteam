import 'package:bloc_test/bloc_test.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_init_error.dart';
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
      'emits [InitState.initInProgress(0.1), InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds), '
          'InitState.initSuccess] when event InitEvent.initEnded if initialized completed and state is not '
          'InitState.initFailure',
      build: () {
        when(mockSmarteam.init).thenAnswer((_) => Future.value(const Right<Error, bool>(true)));

        return InitBloc(smarteam: mockSmarteam);
      },
      act: (initBloc) {
        initBloc
          ..add(const InitEvent.initStarted())
          ..add(const InitEvent.initEnded());
      },
      expect: () => [
        const InitState.initInProgress(0.1),
        InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds),
        const InitState.initSuccess(),
      ],
      verify: (_) {
        verify(mockSmarteam.init).called(1);
      },
    );

    blocTest<InitBloc, InitState>(
      'emits [InitState.initTimeout] when event InitEvent.initTimeUp',
      build: () => InitBloc(smarteam: mockSmarteam),
      act: (initBloc) => initBloc.add(const InitEvent.initTimeUp()),
      expect: () => [
        const InitState.initTimeout(),
      ],
    );

    blocTest<InitBloc, InitState>(
      'emits [InitState.initInProgress, InitState.initInProgress] when event InitEvent.initStarted Right(true)',
      build: () {
        when(mockSmarteam.init).thenAnswer((_) => Future.value(const Right<Error, bool>(true)));

        return InitBloc(smarteam: mockSmarteam);
      },
      act: (initBloc) => initBloc.add(const InitEvent.initStarted()),
      expect: () => [
        const InitState.initInProgress(0.1),
        InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds),
      ],
      verify: (_) {
        verify(mockSmarteam.init).called(1);
      },
    );

    blocTest<InitBloc, InitState>(
        'emits [InitState.initInProgress(0.1), InitState.initFailure(SmarteamInitError)]'
        ' when event InitEvent.initStarted Right(false)',
        build: () {
          when(mockSmarteam.init).thenAnswer((_) => Future.value(const Right<Error, bool>(false)));

          return InitBloc(smarteam: mockSmarteam);
        },
        act: (initBloc) => initBloc.add(const InitEvent.initStarted()),
        expect: () => [
              const InitState.initInProgress(0.1),
              InitState.initFailure(SmarteamInitError()),
            ],
        verify: (_) {
          verify(mockSmarteam.init).called(1);
        });

    blocTest<InitBloc, InitState>(
      "emits [InitState.initInProgress(0.1), InitState.initFailure(SmarteamError('Error')]"
      ' when event InitEvent.initStarted Left(SmarteamError)',
      build: () {
        when(mockSmarteam.init).thenAnswer((_) => Future.value(Left(SmarteamError('Error'))));

        return InitBloc(smarteam: mockSmarteam);
      },
      act: (initBloc) => initBloc.add(const InitEvent.initStarted()),
      expect: () => [
        const InitState.initInProgress(0.1),
        InitState.initFailure(SmarteamError('Error')),
      ],
      verify: (_) {
        verify(mockSmarteam.init).called(1);
      },
    );
  });
}

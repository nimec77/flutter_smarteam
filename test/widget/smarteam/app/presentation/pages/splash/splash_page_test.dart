import 'package:bloc_test/bloc_test.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_init_error.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/pages/splash/splash_page.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/widgets/show_error_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../helpers/helpers.dart';

class MockInitBloc extends MockBloc<InitEvent, InitState> implements InitBloc {}

void main() {
  late final MockInitBloc mockInitBloc;

  setUpAll(() {
    registerFallbackValue<InitState>(const InitState.notInit());
    registerFallbackValue<InitEvent>(const InitEvent.initStarted());
    mockInitBloc = MockInitBloc();
  });

  group('SplashPage test', () {
    testWidgets('SplashPage render test', (widgetTester) async {
      whenListen<InitState>(
        mockInitBloc,
        Stream.fromIterable([const InitState.initInProgress(0.1)]),
        initialState: const InitState.notInit(),
      );
      late final AppLocalizations l10n;
      final widget = Builder(
        builder: (context) {
          l10n = context.l10n;
          return BlocProvider<InitBloc>.value(
            value: mockInitBloc,
            child: const SplashPage(),
          );
        },
      );

      await widgetTester.pumpSizerAndScaffold(widget);

      final textFinder = find.text(l10n.smarteamSplashText);
      expect(textFinder, findsOneWidget);

      final shaderMaskFinder = find.byType(ShaderMask);
      expect(shaderMaskFinder, findsOneWidget);

      final animatedOpacityFinder = find.byType(AnimatedOpacity);
      expect(animatedOpacityFinder, findsOneWidget);
    });

    testWidgets('SplashPage loading test', (widgetTester) async {
      whenListen<InitState>(
        mockInitBloc,
        Stream.fromIterable([const InitState.initInProgress(0.1)]),
        initialState: const InitState.notInit(),
      );
      final widget = BlocProvider<InitBloc>.value(
        value: mockInitBloc,
        child: const SplashPage(),
      );

      await widgetTester.pumpSizerAndScaffold(widget);

      final animatedOpacityFinder = find.byType(AnimatedOpacity);
      final animatedOpacityWidget = widgetTester.widget<AnimatedOpacity>(animatedOpacityFinder);
      expect(animatedOpacityWidget.opacity, 0.0);
    });

    testWidgets('SplashPage error initialization', (widgetTester) async {
      final error = SmarteamError('Initialization error');
      whenListen<InitState>(
        mockInitBloc,
        Stream.fromIterable([InitState.initFailure(SmarteamInitError.init(Error()))]),
        initialState: const InitState.notInit(),
      );
      final widget = BlocProvider<InitBloc>.value(
        value: mockInitBloc,
        child: const SplashPage(),
      );

      await widgetTester.pumpSizerAndScaffold(widget);
      await widgetTester.pumpAndSettle();
      final animatedOpacityFinder = find.byType(AnimatedOpacity);
      final animatedOpacityWidget = widgetTester.widget<AnimatedOpacity>(animatedOpacityFinder);
      expect(animatedOpacityWidget.opacity, 1.0);

      final showErrorFinder = find.byType(ShowErrorWidget);
      expect(showErrorFinder, findsOneWidget);
      final showErrorWidget = widgetTester.widget<ShowErrorWidget>(showErrorFinder);
      expect(showErrorWidget.errorMessage, equals(error.toString()));
    });
  });
}

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_init_error.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/router/router_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockInitBloc extends MockBloc<InitEvent, InitState> implements InitBloc {}

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

void main() {
  late final MockInitBloc mockInitBloc;
  late final MockAuthBloc mockAuthBloc;

  setUpAll(() {
    registerFallbackValue<InitState>(const InitState.notInit());
    registerFallbackValue<InitEvent>(const InitEvent.initStarted());
    mockInitBloc = MockInitBloc();
    registerFallbackValue<AuthState>(const AuthState.notAuthorized());
    registerFallbackValue<AuthEvent>(const AuthEvent.logoutStarted());
    mockAuthBloc = MockAuthBloc();
  });

  tearDownAll(() {});

  group('RouterBloc test', () {
    test('Initial state is RouterState.splashPage()', () {
      expect(RouterBloc(initBloc: mockInitBloc, authBloc: mockAuthBloc).state, equals(const RouterState.splashPage()));
    });

    // blocTest<RouterBloc, RouterState>(
    //   'emits [RouterState.loginPage()] when InitBloc state InitState.initSuccess()',
    //   build: () {
    //     whenListen<InitState>(
    //       mockInitBloc,
    //       Stream.fromIterable([const InitState.initSuccess()]),
    //       initialState: const InitState.notInit(),
    //     );
    //
    //     return RouterBloc(initBloc: mockInitBloc, authBloc: mockAuthBloc);
    //   },
    //   expect: () => [
    //     const RouterState.loginPage(),
    //   ],
    // );

    // blocTest<RouterBloc, RouterState>(
    //   'emits [RouterState.loginPage()] when InitBloc state InitState.initSuccess() and event'
    //   ' RouterEvent.homePageShown()',
    //   build: () {
    //     whenListen<InitState>(
    //       mockInitBloc,
    //       Stream.fromIterable([const InitState.initSuccess()]),
    //       initialState: const InitState.notInit(),
    //     );
    //
    //     return RouterBloc(initBloc: mockInitBloc, authBloc: mockAuthBloc);
    //   },
    //   act: (routerBloc) => routerBloc.add(const RouterEvent.homePageShown()),
    //   expect: () => [
    //     const RouterState.loginPage(),
    //   ],
    // );

    blocTest<RouterBloc, RouterState>(
      'emits [] when InitBloc state InitState.initFailure()',
      build: () {
        whenListen<InitState>(
          mockInitBloc,
          Stream.fromIterable([InitState.initFailure(SmarteamInitError.init(Error()))]),
          initialState: const InitState.notInit(),
        );

        return RouterBloc(initBloc: mockInitBloc, authBloc: mockAuthBloc);
      },
      expect: () => <RouterState>[],
    );

    blocTest<RouterBloc, RouterState>(
      'emits [] when InitBloc state InitState.initFailure() and event RouterEvent.loginPageShown()',
      build: () {
        whenListen<InitState>(
          mockInitBloc,
          Stream.fromIterable([InitState.initFailure(SmarteamInitError.init(Error()))]),
          initialState: const InitState.notInit(),
        );

        return RouterBloc(initBloc: mockInitBloc, authBloc: mockAuthBloc);
      },
      act: (routerBloc) => routerBloc.add(const RouterEvent.loginPageShown()),
      expect: () => <RouterState>[],
    );

    blocTest<RouterBloc, RouterState>(
      'emits [] when InitBloc state InitState.initFailure() and event RouterEvent.homePageShown()',
      build: () {
        whenListen<InitState>(
          mockInitBloc,
          Stream.fromIterable([InitState.initFailure(SmarteamInitError.init(Error()))]),
          initialState: const InitState.notInit(),
        );

        return RouterBloc(initBloc: mockInitBloc, authBloc: mockAuthBloc);
      },
      act: (routerBloc) => routerBloc.add(const RouterEvent.homePageShown()),
      expect: () => <RouterState>[],
    );

    // blocTest<RouterBloc, RouterState>(
    //   'emits [RouterState.loginPage(), RouterState.homePage()] when InitBloc state InitState.initSuccess() and AuthBloc'
    //   ' state AuthState.loginSuccess',
    //   build: () {
    //     whenListen<InitState>(
    //       mockInitBloc,
    //       Stream.fromIterable([const InitState.initSuccess()]),
    //       initialState: const InitState.notInit(),
    //     );
    //     whenListen<AuthState>(
    //       mockAuthBloc,
    //       Stream.fromIterable([const AuthState.loginSuccess()]),
    //       initialState: const AuthState.notAuthorized(),
    //     );
    //     return RouterBloc(initBloc: mockInitBloc, authBloc: mockAuthBloc);
    //   },
    //   expect: () => [
    //     const RouterState.loginPage(),
    //     const RouterState.homePage(),
    //   ],
    // );

    // blocTest<RouterBloc, RouterState>(
    //   'emits [RouterState.loginPage()] when InitBloc state InitState.initSuccess() and AuthBloc state'
    //   ' AuthState.loginFailure',
    //   build: () {
    //     whenListen<InitState>(
    //       mockInitBloc,
    //       Stream.fromIterable([const InitState.initSuccess()]),
    //       initialState: const InitState.notInit(),
    //     );
    //     whenListen<AuthState>(
    //       mockAuthBloc,
    //       Stream.fromIterable([AuthState.loginFailure(Error())]),
    //       initialState: const AuthState.notAuthorized(),
    //     );
    //     return RouterBloc(initBloc: mockInitBloc, authBloc: mockAuthBloc);
    //   },
    //   expect: () => [
    //     const RouterState.loginPage(),
    //   ],
    // );
  });
}

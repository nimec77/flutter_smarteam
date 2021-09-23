import 'package:bloc_test/bloc_test.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_login_failure.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_logout_failure.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/smarteam_user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSmarteamLoginRepository extends Mock implements SmarteamUserRepository {}
class MockInitBlock extends Mock implements InitBloc {}

void main() {
  final mockSmarteamLoginRepository = MockSmarteamLoginRepository();
  final mockInitBloc = MockInitBlock();
  final loginError = SmarteamError('Login Error');
  final logoutError = SmarteamError('Logout Error');

  group('AuthBloc test', () {
    test('Initial state is AuthState.notAuthorized', () {
      expect(AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc).state,
          equals(const AuthState.notAuthorized()));
    });
  });

  group('AuthBloc login tests', () {
    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress, AuthState.loginSuccess] when event AuthEvent.loginStarted if login successful',
      build: () {
        when(() => mockSmarteamLoginRepository.userLogin(any(), any()))
            .thenAnswer((_) => Future.value(const Right<Error, bool>(true)));
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(username: 'username', password: 'password')),
      expect: () =>
      [
        const AuthState.loginInProgress(showCancel: false),
        const AuthState.loginSuccess(),
      ],
      verify: (_) {
        verify(() => mockSmarteamLoginRepository.userLogin(any(), any())).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress(), AuthState.loginFailure(loginError)] when event AuthEvent.loginStarted if '
          'login failure',
      build: () {
        when(() => mockSmarteamLoginRepository.userLogin(any(), any()))
            .thenAnswer((_) => Future.value(Left(loginError)));
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(username: 'username', password: 'password')),
      expect: () =>
      [
        const AuthState.loginInProgress(showCancel: false),
        AuthState.loginFailure(loginError),
      ],
      verify: (_) {
        verify(() => mockSmarteamLoginRepository.userLogin(any(), any())).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress(), AuthState.loginFailure(SmarteamLoginFailure)] when event '
          'AuthEvent.loginStarted if login false',
      build: () {
        when(() => mockSmarteamLoginRepository.userLogin(any(), any()))
            .thenAnswer((_) => Future.value(const Right<Error, bool>(false)));

        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(username: 'username', password: 'password')),
      expect: () =>
      [
        const AuthState.loginInProgress(showCancel: false),
        AuthState.loginFailure(SmarteamLoginFailure()),
      ],
      verify: (_) {
        verify(() => mockSmarteamLoginRepository.userLogin(any(), any())).called(1);
      },
    );
  });

  group('Auth bloc loginSuccess tests', () {
    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginSuccess()] when event AuthEvent.loginSuccessful if state is not'
          ' AuthStateLoginCancelSuccess',
      build: () {
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginSuccessful()),
      expect: () =>
      [
        const AuthState.loginSuccess(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress(showCancel: false), AuthState.loginCancelSuccess(), AuthState.notAuthorized(),]'
          ' when event AuthEvent.loginSuccessful if state is AuthStateLoginCancelSuccess',
      build: () {
        when(mockSmarteamLoginRepository.userLogout)
            .thenAnswer((invocation) => Future.value(const Right<Error, bool>(true)));
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) async {
        authBloc.add(const AuthEvent.loginCanceled());
        await Future<void>.delayed(const Duration(milliseconds: 1500));
        authBloc.add(const AuthEvent.loginSuccessful());
      },
      expect: () =>
      [
        const AuthState.loginInProgress(showCancel: false),
        const AuthState.loginCancelSuccess(),
        const AuthState.notAuthorized(),
      ],
      verify: (_) {
        verify(mockSmarteamLoginRepository.userLogout).called(1);
      },
    );
  });

  group('AuthBloc loginFailed tests', () {
    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginFailure(error) when event AuthEvent.loginFailed(error)',
      build: () {
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(AuthEvent.loginFailed(loginError)),
      expect: () =>
      [
        AuthState.loginFailure(loginError),
      ],
    );
  });

  group('AuthBloc showCancel tests', () {
    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress(showCancel: true)] when event AuthEvent.shownCancel',
      build: () {
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.shownCancel()),
      expect: () =>
      [
        const AuthState.loginInProgress(showCancel: true),
      ],
    );
  });

  group('AuthBloc loginCanceled tests', () {
    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress(showCancel: false), AuthState.loginCancelSuccess()] when event'
          ' AuthEvent.loginCanceled',
      build: () {
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) async {
        await Future<void>.delayed(const Duration(milliseconds: 1500));
        authBloc.add(const AuthEvent.loginCanceled());
      },
      expect: () =>
      [
        const AuthState.loginInProgress(showCancel: false),
        const AuthState.loginCancelSuccess(),
      ],
    );
  });

  group('AuthBloc logout tests', () {
    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.logoutInProgress(), AuthState.notAuthorized()] when event AuthEvent.logoutStarted '
          'if logout successful',
      build: () {
        when(mockSmarteamLoginRepository.userLogout).thenAnswer((_) => Future.value(const Right(true)));

        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.logoutStarted()),
      expect: () =>
      [
        const AuthState.logoutInProgress(),
        const AuthState.notAuthorized(),
      ],
      verify: (_) {
        verify(mockSmarteamLoginRepository.userLogout).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress(), AuthState.logoutFailure(SmarteamLogoutFailure()), AuthState.notAuthorized()]'
          ' when event AuthEvent.logoutStarted if logout failed',
      build: () {
        when(mockSmarteamLoginRepository.userLogout).thenAnswer((_) => Future.value(const Right(false)));

        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.logoutStarted()),
      expect: () =>
      [
        const AuthState.logoutInProgress(),
        AuthState.logoutFailure(SmarteamLogoutFailure()),
        const AuthState.notAuthorized(),
      ],
      verify: (_) {
        verify(mockSmarteamLoginRepository.userLogout).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress(), AuthState.logoutFailure(logoutError), AuthState.notAuthorized()]'
          ' when event AuthEvent.logoutStarted if logout false',
      build: () {
        when(mockSmarteamLoginRepository.userLogout).thenAnswer((_) => Future.value(Left(logoutError)));

        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository, initBloc: mockInitBloc);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.logoutStarted()),
      expect: () =>
      [
        const AuthState.logoutInProgress(),
        AuthState.logoutFailure(logoutError),
        const AuthState.notAuthorized(),
      ],
      verify: (_) {
        verify(mockSmarteamLoginRepository.userLogout).called(1);
      },
    );
  });
}

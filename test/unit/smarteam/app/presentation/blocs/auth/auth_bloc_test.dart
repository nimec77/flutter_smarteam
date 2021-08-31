import 'package:bloc_test/bloc_test.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_login_failure.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/smarteam_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSmarteamLoginRepository extends Mock implements SmarteamLoginRepository {}

void main() {
  final mockSmarteamLoginRepository = MockSmarteamLoginRepository();
  final loginError = SmarteamError('Login Error');
  final logoutError = SmarteamError('Logout Error');

  group('AuthBloc test', () {
    test('Inital state is notAuthorized', () {
      expect(AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository).state,
          equals(const AuthState.notAuthorized()));
    });

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.loginInProgress, AuthState.loginSuccess] when event AuthEvent.loginStarted if login successful',
      build: () {
        when(() => mockSmarteamLoginRepository.userLogin(any(), any()))
            .thenAnswer((_) => Future.value(const Right<Error, bool>(true)));
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(username: 'username', password: 'password')),
      expect: () => [
        const AuthState.loginInProgress(),
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
        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(username: 'username', password: 'password')),
      expect: () => [
        const AuthState.loginInProgress(),
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

        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository);
      },
      act: (authBloc) => authBloc.add(const AuthEvent.loginStarted(username: 'username', password: 'password')),
      expect: () => [
        const AuthState.loginInProgress(),
        AuthState.loginFailure(SmarteamLoginFailure()),
      ],
      verify: (_) {
        verify(() => mockSmarteamLoginRepository.userLogin(any(), any())).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.logoutInProgress()] when event AuthEvent.logoutStarted if logout successful',
      build: () {
        when(mockSmarteamLoginRepository.userLogout).thenAnswer((_) => Future.value(const Right(true)));

        return AuthBloc(smarteamLoginRepository: mockSmarteamLoginRepository);
      },
    );
  });
}
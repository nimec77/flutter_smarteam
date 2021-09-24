import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_user_error.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/constants.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/domain/use_cases/credential_use_case.dart';
import 'package:flutter_smarteam/smarteam/login/domain/use_cases/smart_user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.initBloc}) : super(const AuthState.notAuthorized()) {
    initBloc.stream.where((state) => state is InitStateSuccess).listen((state) {
      final success = initBloc.state as InitStateSuccess;
      success.credentialEither.map(
          (credential) => add(AuthEvent.loginStarted(username: credential.username, password: credential.password)));
    });
  }

  final InitBloc initBloc;
  Credential? _credential;

  @override
  Future<void> close() {
    return super.close();
  }

  SmartUserUseCase get smartUserUseCase {
    assert(initBloc.state is InitStateSuccess);
    final state = initBloc.state as InitStateSuccess;

    return SmartUserUseCase(state.smarteamUserRepository);
  }

  CredentialUseCase get credentialUseCase {
    assert(initBloc.state is InitStateSuccess);
    final state = initBloc.state as InitStateSuccess;

    return CredentialUseCase(
        credentialsDao: state.appDatabase.credentialsDaoImp, cryptoRepository: state.cryptoRepository);
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      loginStarted: _mapLoginStartedToState,
      loginSuccessful: _mapLoginSuccessfulToState,
      loginFailed: _mapLoginFailedToState,
      shownCancel: _mapShownCancelToState,
      loginCanceled: _mapLoginCanceledToState,
      logoutStarted: _mapLogoutStartedToState,
    );
  }

  Stream<AuthState> _mapLoginStartedToState(AuthEventLoginStarted event) async* {
    yield const AuthState.loginInProgress(showCancel: false);

    unawaited(_loginSmarteam(event.username, event.password));

    unawaited(_showCancel());
  }

  Stream<AuthState> _mapLoginSuccessfulToState(AuthEventLoginSuccessful event) async* {
    if (state is AuthStateLoginCancelSuccess) {
      yield const AuthState.notAuthorized();
      unawaited(smartUserUseCase.userLogout());
    } else {
      yield AuthState.loginSuccess(_credential!);
    }
  }

  Stream<AuthState> _mapLoginFailedToState(AuthEventLoginFailed event) async* {
    yield AuthState.loginFailure(event.error);
  }

  Stream<AuthState> _mapShownCancelToState(AuthEventShownCancel event) async* {
    yield const AuthState.loginInProgress(showCancel: true);
  }

  Stream<AuthState> _mapLoginCanceledToState(AuthEventLoginCanceled event) async* {
    yield const AuthState.loginInProgress(showCancel: false);
    await Future<void>.delayed(kAuthAnimationDelay);
    yield const AuthState.loginCancelSuccess();
  }

  Stream<AuthState> _mapLogoutStartedToState(AuthEventLogoutStarted event) async* {
    yield const AuthState.logoutInProgress();
    final result = await smartUserUseCase.userLogout();
    yield* result.fold(
      (error) async* {
        yield AuthState.logoutFailure(error);
        await Future<void>.delayed(kAuthAnimationDelay);
      },
      (logoutResult) async* {
        if (!logoutResult) {
          yield AuthState.logoutFailure(SmarteamUserError.logout(Error()));
          await Future<void>.delayed(kAuthAnimationDelay);
        }
      },
    );
    yield const AuthState.notAuthorized();
  }

  Future<void> _loginSmarteam(String username, String password) async {
    final credentialEither = await credentialUseCase.createCredential(username, password);
    credentialEither.fold(
      (error) => add(AuthEvent.loginFailed(SmarteamUserError.credential(error))),
      (credential) async {
        _credential = credential;
        final result = await smartUserUseCase.userLogin(_credential!);
        result.fold(
          (error) => add(AuthEvent.loginFailed(error)),
          (loginResult) => loginResult
              ? add(const AuthEvent.loginSuccessful())
              : add(AuthEvent.loginFailed(SmarteamUserError.login(Error()))),
        );
      },
    );
  }

  Future<void> _showCancel() async {
    await Future<void>.delayed(kShowCancelDelay);
    if (state is AuthstateLoginInProgress) {
      add(const AuthEvent.shownCancel());
    }
  }
}

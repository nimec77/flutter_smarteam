import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_login_failure.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_logout_failure.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/constants.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/repositories/crypto_repository.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/repositories/smarteam_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.initBloc}) : super(const AuthState.notAuthorized());

  final InitBloc initBloc;

  @override
  Future<void> close() {
    return super.close();
  }

  SmarteamUserRepository get smarteamUserRepository {
    assert(initBloc.state is InitStateSuccess);
    final state = initBloc.state as InitStateSuccess;

    return state.smarteamUserRepository;
  }

  CryptoRepository get cryptoRepository {
    assert(initBloc.state is InitStateSuccess);
    final state = initBloc.state as InitStateSuccess;

    return state.cryptoRepository;
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
      unawaited(smarteamUserRepository.userLogout());
    } else {
      yield const AuthState.loginSuccess();
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
    final result = await smarteamUserRepository.userLogout();
    yield* result.fold(
      (error) async* {
        yield AuthState.logoutFailure(error);
        await Future<void>.delayed(kAuthAnimationDelay);
      },
      (logoutResult) async* {
        if (!logoutResult) {
          yield AuthState.logoutFailure(SmarteamLogoutFailure());
          await Future<void>.delayed(kAuthAnimationDelay);
        }
      },
    );
    yield const AuthState.notAuthorized();
  }

  Future<void> _loginSmarteam(String username, String password) async {
    final result = await smarteamUserRepository.userLogin(username, password);
    result.fold(
      (error) => add(AuthEvent.loginFailed(error)),
      (loginResult) =>
          loginResult ? add(const AuthEvent.loginSuccessful()) : add(AuthEvent.loginFailed(SmarteamLoginFailure())),
    );
  }

  Future<void> _showCancel() async {
    await Future<void>.delayed(kShowCancelDelay);
    if (state is AuthstateLoginInProgress) {
      add(const AuthEvent.shownCancel());
    }
  }
}

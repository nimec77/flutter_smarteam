import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_login_failure.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_logout_failure.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/smarteam_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.smarteamLoginRepository}) : super(const AuthState.notAuthorized());

  final SmarteamLoginRepository smarteamLoginRepository;
  StreamSubscription<AuthState>? _loginInProgressSubscription;

  @override
  Future<void> close() {
    _loginInProgressSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      loginStarted: _mapLoginStartedToState,
      loginShowCancel: _mapLoginShowCancelToState,
      loginCanceled: _mapLoginCanceledToState,
      logoutStarted: _mapLogoutStartedToState,
    );
  }

  Stream<AuthState> _mapLoginStartedToState(AuthEventLoginStarted event) async* {
    yield const AuthState.loginInProgress(showCancel: false);

    Future.delayed(const Duration(seconds: 1), _showCancel);

    // final result = await smarteamLoginRepository.userLogin(event.username, event.password);
    // yield result.fold(
    //   (error) => AuthState.loginFailure(error),
    //   (loginResult) {
    //     if (loginResult) {
    //       return const AuthState.loginSuccess();
    //     }
    //     return AuthState.loginFailure(SmarteamLoginFailure());
    //   },
    // );
  }

  Stream<AuthState> _mapLoginShowCancelToState(AuthEventShowCancel event) async* {
    yield const AuthState.loginInProgress(showCancel: true);
  }

  Stream<AuthState> _mapLoginCanceledToState(AuthEventLoginCanceled event) async* {
    yield const AuthState.notAuthorized();
  }

  Stream<AuthState> _mapLogoutStartedToState(AuthEventLogoutStarted event) async* {
    yield const AuthState.logoutInProgress();
    final result = await smarteamLoginRepository.userLogout();
    yield* result.fold(
      (error) async* {
        yield AuthState.logoutFailure(error);
        await Future<void>.delayed(const Duration(seconds: 1));
      },
      (logoutResult) async* {
        if (!logoutResult) {
          yield AuthState.logoutFailure(SmarteamLogoutFailure());
          await Future<void>.delayed(const Duration(seconds: 1));
        }
      },
    );
    yield const AuthState.notAuthorized();
  }

  void _showCancel() {
    if (state is AuthstateLoginInProgress) {
      add(const AuthEvent.loginShowCancel());
    }
  }
}

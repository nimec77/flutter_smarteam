import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';
import 'package:flutter_smarteam/smarteam/app/data/providers/sqlite_provider.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/credential_error.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_init_error.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/pages/constants.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/crypto_provider.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/smarteam_user_provider.dart';
import 'package:flutter_smarteam/smarteam/login/data/repositories/crypto_repository_imp.dart';
import 'package:flutter_smarteam/smarteam/login/data/repositories/smarteam_user_repository_imp.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/repositories/crypto_repository.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/repositories/smarteam_user_repository.dart';
import 'package:flutter_smarteam/smarteam/login/domain/use_cases/credential_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'init_bloc.freezed.dart';

part 'init_event.dart';

part 'init_state.dart';

class InitBloc extends Bloc<InitEvent, InitState> {
  InitBloc({required this.sqliteProvider, required this.smarteam}) : super(const InitState.notInit());

  final SqliteProvider sqliteProvider;
  final Smarteam smarteam;
  bool _initialized = false;
  late final AppDatabase _appDatabase;
  late final CryptoRepository _cryptoRepository;
  late final Either<CredentialError, Credential> _credentialEither;

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
    _initialized = false;
    yield const InitState.initInProgress(0.1);
    await sqliteProvider.init();
    _appDatabase = AppDatabase.connect(sqliteProvider.databaseConnection);
    yield const InitState.initInProgress(0.2);
    final result = await smarteam.init();
    yield const InitState.initInProgress(0.7);
    await Future<void>.delayed(const Duration(seconds: 1));
    yield* result.fold(
      (error) async* {
        yield InitState.initFailure(SmarteamInitError.init(error));
      },
      (initResult) async* {
        if (!initResult) {
          yield InitState.initFailure(SmarteamInitError.init(Error()));
          return;
        }
        _cryptoRepository = CryptoRepositoryImp(CryptoProvider(smarteam));
        _credentialEither = await _loadCredential();
        _initialized = true;
        yield InitState.initInProgress(1 - 1 / kLoadDuration.inSeconds);
      },
    );
  }

  Stream<InitState> _mapInitEndedToState(InitEventEnded event) async* {
    if (state is! InitStateFailure) {
      if (!_initialized) {
        yield const InitState.initTimeout();
        return;
      }
      yield InitState.initSuccess(
        appDatabase: _appDatabase,
        smarteamUserRepository: SmarteamUserRepositoryImp(SmarteamUserProvider(smarteam)),
        cryptoRepository: _cryptoRepository,
        credentialEither: _credentialEither,
      );
    }
  }

  Stream<InitState> _mapInitTimeUpToState(InitEventTimeUp event) async* {
    yield const InitState.initTimeout();
  }

  Stream<InitState> _mapInitExitedToState(InitEventExited event) async* {
    await SystemNavigator.pop(animated: true);
    exit(0);
  }

  Future<Either<CredentialError, Credential>> _loadCredential() async {
    final credentialUseCase = CredentialUseCase(
      credentialsDao: _appDatabase.credentialsDaoImp,
      cryptoRepository: _cryptoRepository,
    );
    return credentialUseCase.loadCredential();
  }
}

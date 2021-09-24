part of 'init_bloc.dart';

@freezed
class InitState with _$InitState {
  const factory InitState.notInit() = InitStateNotInit;

  const factory InitState.initInProgress(double progress) = InitStateInProgress;

  const factory InitState.initSuccess({
    required AppDatabase appDatabase,
    required SmarteamUserRepository smarteamUserRepository,
    required CryptoRepository cryptoRepository,
    required Either<CredentialError, Credential> credentialEither,
  }) = InitStateSuccess;

  const factory InitState.initFailure(SmarteamInitError error) = InitStateFailure;

  const factory InitState.initTimeout() = InitStateTimeout;
}

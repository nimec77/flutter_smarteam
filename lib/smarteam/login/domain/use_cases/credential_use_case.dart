import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/credential_error.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/daos/credentials_dao.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/repositories/crypto_repository.dart';

class CredentialUseCase {
  CredentialUseCase({required this.credentialsDao, required this.cryptoRepository});

  final CredentialsDao credentialsDao;
  final CryptoRepository cryptoRepository;

  Future<Either<CredentialError, Credential>> createCredential(String username, String password) async {
    final sidEither = await cryptoRepository.getSid();
    return sidEither.fold(
      (error) => Left(CredentialError.sid(error)),
      (sid) => Right(Credential(sid: sid, username: username, password: password)),
    );
  }

  Future<Either<CredentialError, int>> saveCredential(String username, String password) async {
    final sidEither = await cryptoRepository.getSid();
    return sidEither.fold(
      (error) => Left(CredentialError.sid(error)),
      (sid) async {
        final credential = Credential(
          sid: sid,
          username: username,
          password: password,
        );
        final encodeEither = await cryptoRepository.encode(password);
        return encodeEither.fold(
          (error) => Left(CredentialError.encode(error)),
          (encodedPassword) {
            return credentialsDao.saveCredential(credential.copyWith(password: encodedPassword));
          },
        );
      },
    );
  }

  Future<Either<CredentialError, Credential>> loadCredential() async {
    final sidEither = await cryptoRepository.getSid();
    return sidEither.fold(
      (error) => Left(CredentialError.sid(error)),
      (sid) async {
        final credentialEither = await credentialsDao.credentialBySid(sid);
        return credentialEither.fold(
          (error) => Left(error),
          (credential) async {
            final decodeEither = await cryptoRepository.decode(credential.password);
            return decodeEither.fold(
              (error) => Left(CredentialError.decode(error)),
              (password) => Right(credential.copyWith(password: password)),
            );
          },
        );
      },
    );
  }
}

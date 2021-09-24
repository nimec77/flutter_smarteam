import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/app/data/app_database.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_user_error.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/repositories/smarteam_user_repository.dart';

class SmartUserUseCase {
  SmartUserUseCase(this.smarteamUserRepository);

  final SmarteamUserRepository smarteamUserRepository;

  Future<Either<SmarteamUserError, bool>> userLogin(Credential credential) async {
    final result = await smarteamUserRepository.userLogin(credential.username, credential.password);
    return result.fold(
      (error) => Left(SmarteamUserError.login(error)),
      (r) => Right(r),
    );
  }

  Future<Either<SmarteamUserError, bool>> userLogout() async {
    final result = await smarteamUserRepository.userLogout();
    return result.fold(
      (error) => Left(SmarteamUserError.logout(error)),
      (r) => Right(r),
    );
  }
}

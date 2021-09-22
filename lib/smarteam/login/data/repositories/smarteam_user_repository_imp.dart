import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/smarteam_user_provider.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/smarteam_user_repository.dart';

class SmarteamUserRepositoryImp implements SmarteamUserRepository {
  SmarteamUserRepositoryImp(this.smarteamLoginProvider);

  final SmarteamUserProvider smarteamLoginProvider;

  @override
  Future<Either<Error, bool>> userLogin(String username, String password) async {
    return smarteamLoginProvider.userLogin(username, password);
  }

  @override
  Future<Either<Error, bool>> userLogout() async {
    return smarteamLoginProvider.userLogoff();
  }
}

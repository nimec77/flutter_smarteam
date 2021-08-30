import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/smarteam_login_provider.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/smarteam_repository.dart';

class SmarteamLoginRepositoryImp implements SmarteamLoginRepository {
  SmarteamLoginRepositoryImp(this.smarteamLoginProvider);

  final SmarteamLoginProvider smarteamLoginProvider;

  @override
  Future<Either<Error, bool>> userLogin(String username, String password) async {
    return smarteamLoginProvider.userLogin(username, password);
  }

  @override
  Future<Either<Error, bool>> userLogout() async {
    return smarteamLoginProvider.userLogoff();
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/smarteam_repository.dart';

class SmarteamRepositoryImp implements SmarteamRepository {
  @override
  Future<Either<Error, bool>> userLogin(String username, String password) async {
    // TODO: implement userLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Error, bool>> userLogout() async {
    // TODO: implement userLogout
    throw UnimplementedError();
  }
}
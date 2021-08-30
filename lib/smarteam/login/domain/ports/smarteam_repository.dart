import 'package:dartz/dartz.dart';

abstract class SmarteamLoginRepository {
  Future<Either<Error, bool>> userLogin(String username, String password);

  Future<Either<Error, bool>> userLogout();
}
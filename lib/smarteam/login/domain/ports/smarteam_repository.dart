import 'package:dartz/dartz.dart';

abstract class SmarteamRepository {
  Future<Either<Error, bool>> userLogin(String username, String password);

  Future<Either<Error, bool>> userLogout();
}
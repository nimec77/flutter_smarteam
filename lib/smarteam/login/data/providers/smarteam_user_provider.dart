import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';

class SmarteamUserProvider {
  SmarteamUserProvider(this.smarteam);

  final Smarteam smarteam;

  Future<Either<Error, bool>> userLogin(String username, String password) async {
    return smarteam.userLogin(username, password);
  }

  Future<Either<Error, bool>> userLogoff() async {
    return smarteam.userLogoff();
  }
}

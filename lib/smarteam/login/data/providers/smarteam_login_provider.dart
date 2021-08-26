import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';

class SmarteamLoginProvider {
  SmarteamLoginProvider(this._smarteam);

  final Smarteam _smarteam;

  Future<Either<Error, bool>> userLogin(String username, String password) async {
    return _smarteam.userLogin(username, password);
  }

  Future<Either<Error, bool>> userLogoff() async {
    return _smarteam.userLogoff();
  }
}

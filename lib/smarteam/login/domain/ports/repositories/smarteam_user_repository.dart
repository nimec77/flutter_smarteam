import 'package:dart_smarteam/smarteam.dart';

abstract class SmarteamUserRepository {
  Future<EitherBool> userLogin(String username, String password);

  Future<EitherBool> userLogout();
}
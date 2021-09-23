import 'package:dart_smarteam/smarteam.dart';

class SmarteamUserProvider {
  SmarteamUserProvider(this.smarteam);

  final Smarteam smarteam;

  Future<EitherBool> userLogin(String username, String password) async {
    return smarteam.userLogin(username, password);
  }

  Future<EitherBool> userLogoff() async {
    return smarteam.userLogoff();
  }
}

import 'package:dart_smarteam/smarteam.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/smarteam_user_provider.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/repositories/smarteam_user_repository.dart';

class SmarteamUserRepositoryImp implements SmarteamUserRepository {
  SmarteamUserRepositoryImp(this.smarteamLoginProvider);

  final SmarteamUserProvider smarteamLoginProvider;

  @override
  Future<EitherBool> userLogin(String username, String password) async {
    return smarteamLoginProvider.userLogin(username, password);
  }

  @override
  Future<EitherBool> userLogout() async {
    return smarteamLoginProvider.userLogoff();
  }
}

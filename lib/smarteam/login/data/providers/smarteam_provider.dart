import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';

class SmarteamProvider {
  final smarteam = const Smarteam();

  bool _isInitialized = false;

  Future<Either<Error, bool>> userLogin(String username, String password) async {
    return const Right(false);
  }

  Future<Either<Error, bool>> userLogout() async {
    return const Right(false);
  }

  Future<Either<Error, bool>> init() async {
    if (_isInitialized) {
      return const Right(true);
    }
    final result = await smarteam.init();
    _isInitialized = result | false;

    return result;
  }

  Future<void> dispose() async {
    return smarteam.dispose();
  }
}
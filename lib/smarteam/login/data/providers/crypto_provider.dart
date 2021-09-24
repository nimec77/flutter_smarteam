import 'package:dart_smarteam/smarteam.dart';

class CryptoProvider {
  CryptoProvider(this.smarteam);

  final Smarteam smarteam;

  Future<EitherString> getSid() {
    return smarteam.getSid();
  }
}
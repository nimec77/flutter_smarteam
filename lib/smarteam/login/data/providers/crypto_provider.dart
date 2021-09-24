import 'package:dart_smarteam/smarteam.dart';

class CryptoProvider {
  CryptoProvider(this.smarteam);

  final Smarteam smarteam;

  Future<EitherString> getSid() {
    return smarteam.getSid();
  }

  Future<EitherString> encode(String text) {
    return smarteam.encode(text);
  }

  Future<EitherString> decode(String hexText) {
    return smarteam.decode(hexText);
  }
}
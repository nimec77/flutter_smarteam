import 'package:dart_smarteam/smarteam.dart';

abstract class CryptoRepository {
  Future<EitherString> getSid();

  Future<EitherString> encode(String text);

  Future<EitherString> decode(String hexText);
}
import 'package:dart_smarteam/smarteam.dart';

abstract class CryptoRepository {
  Future<EitherString> getSid();
}
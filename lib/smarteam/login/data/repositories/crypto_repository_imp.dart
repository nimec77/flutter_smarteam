import 'package:dart_smarteam/smarteam.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/crypto_provider.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/repositories/crypto_repository.dart';

class CryptoRepositoryImp implements CryptoRepository {
  CryptoRepositoryImp(this.cryptoProvider);

  final CryptoProvider cryptoProvider;

  @override
  Future<EitherString> getSid() async {
    return cryptoProvider.getSid();
  }

  @override
  Future<EitherString> encode(String text) {
    return cryptoProvider.encode(text);
  }

  @override
  Future<EitherString> decode(String hexText) {
    return cryptoProvider.decode(hexText);
  }
}
import 'package:dart_smarteam/smarteam.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/smarteam_user_provider.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../constants.dart';

void main() {
  const smarteam = Smarteam();
  late final SmarteamUserProvider smarteamProvider;

  setUpAll(() async {
    await smarteam.init();
    smarteamProvider = SmarteamUserProvider(const Smarteam());
  });

  tearDownAll(() async {
    await smarteam.dispose();
  });

  group('SmarteamProvider functions test', () {
    test('Test userLogin', () async {
      final result = await smarteamProvider.userLogin(kUsername, kPassword);

      expect(result, isA<Either<Error, bool>>());
      expect(result.isRight(), equals(true));
      expect(result | false, equals(true));

      await smarteamProvider.userLogoff();
    });

    test('Test userLogout', () async {
      await smarteamProvider.userLogin(kUsername, kPassword);
      final result = await smarteamProvider.userLogoff();

      expect(result, isA<Either<Error, bool>>());
      expect(result.isRight(), equals(true));
      expect(result | false, equals(true));
    });
  });
}

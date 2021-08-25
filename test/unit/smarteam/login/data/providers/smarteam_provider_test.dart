import 'package:dartz/dartz.dart';
import 'package:flutter_smarteam/smarteam/login/data/providers/smarteam_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final SmarteamProvider smarteamProvider;

  setUpAll(() async {
    smarteamProvider = SmarteamProvider();
    await smarteamProvider.init();
  });

  tearDownAll(() async {
    await smarteamProvider.dispose();
  });

  group('Create and destroy tests', () {
    test('Create test', () async {
      final result = await smarteamProvider.init();

      result.fold(
        print,
        print,
      );
      expect(result, isA<Either<Error, bool>>());
      expect(result.isRight(), equals(true));
      expect(result | false, equals(true));
    });
  });

  test('Test userLogin', () async {
    final result = await smarteamProvider.userLogin('username', 'password');

    expect(result, isA<Either<Error, bool>>());
    expect(result.isRight(), equals(true));
    expect(result | false, equals(false));
  });
}

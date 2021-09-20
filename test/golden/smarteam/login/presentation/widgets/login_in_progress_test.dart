import 'package:flutter/cupertino.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_in_progress.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  testGoldens('LoginInProgress render test', (tester) async {
    final builder = GoldenBuilder.column()
      ..addScenario(
        'LoginInProgress',
        const LoginInProgress(
          width: 800,
          height: 600,
          value: 0.1,
        ),
      );
    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(1024, 768),
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_login_in_progress');
  });
}

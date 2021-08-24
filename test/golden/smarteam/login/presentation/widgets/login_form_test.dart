import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_form.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import '../../../../../helpers/helpers.dart';

void main() {
  testGoldens('LoginForm render test', (tester) async {
    final builder = GoldenBuilder.column()..addScenario('LoginForm', LoginForm());
    await tester.pumpWidgetBuilder(
      builder.build(),
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_login_form');
  });
}

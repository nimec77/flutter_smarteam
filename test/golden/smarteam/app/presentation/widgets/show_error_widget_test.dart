import 'package:flutter_smarteam/smarteam/app/presentation/widgets/show_error_widget.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  testGoldens('ShowErrorWidget render test', (tester) async {
    const widget = ShowErrorWidget(
      errorMessage: 'Error Message',
      height: 500,
    );

    final builder = GoldenBuilder.column()..addScenario('ShowErrorWidget', widget);
    await tester.pumpWidgetBuilder(
      builder.build(),
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_show_error_widget');
  });
}

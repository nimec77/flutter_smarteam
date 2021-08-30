import 'package:flutter/material.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/constants.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/widgets/show_error_widget.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  group('ShowErrorWidget test', () {
    testWidgets('ShowErrorWidget render test', (widgetTester) async {
      const errorMessage = 'Error message';
      late final AppLocalizations l10n;
      final widget = Builder(
        builder: (context) {
          l10n = context.l10n;
          return ShowErrorWidget(
            errorMessage: errorMessage,
            onRepeat: () {},
            onExit: () {},
          );
        },
      );

      await widgetTester.pumpSizerAndScaffold(widget);

      final showErrorTextFinder = find.byKey(kShowErrorTextKey);
      final showErrorTextWidget = widgetTester.widget<Text>(showErrorTextFinder);
      expect(showErrorTextWidget.data, equals(errorMessage));

      final showErrorRepeatButtonFinder = find.byKey(kShowErrorRepeatButtonKey);
      final showErrorRepeatButtonWidget = widgetTester.widget<ElevatedButton>(showErrorRepeatButtonFinder);
      expect(showErrorRepeatButtonWidget.enabled, equals(true));
      final showErrorRepeatButtonText = showErrorRepeatButtonWidget.child as Text?;
      expect(showErrorRepeatButtonText?.data, equals(l10n.showErrorWidgetRepeatButtonText));

      final showErrorExitButtonFinder = find.byKey(kShowErrorExitButtonKey);
      final showErrorExitButtonWidget = widgetTester.widget<ElevatedButton>(showErrorExitButtonFinder);
      expect(showErrorExitButtonWidget.enabled, equals(true));
      final showErrorExitButtonText = showErrorExitButtonWidget.child as Text?;
      expect(showErrorExitButtonText?.data, equals(l10n.showErrorWidgetExitButtonText));
    });
  });
}

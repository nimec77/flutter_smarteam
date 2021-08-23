import 'package:flutter/material.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/login/constants.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/common_widgets/login_button.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_form.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('LoginForm text', () {
    testWidgets('LoginForm render test', (widgetTester) async {
      late final AppLocalizations l10n;
      final widget = Builder(
        builder: (context) {
          l10n = context.l10n;
          return LoginForm();
        },
      );
      await widgetTester.pumpSizerAndScaffold(widget);

      final usernameFinder = find.byKey(kUsernameFieldKey);
      final usernameTextFormFieldElement = widgetTester.element(usernameFinder);
      final usernameTextFieldWidget = widgetTester.findChildWidget<TextField>(usernameTextFormFieldElement);
      expect(usernameTextFieldWidget?.decoration?.labelText, l10n.loginUsernameText);

      final passwordFinder = find.byKey(kPasswordFieldKey);
      final passwordTextFormFieldElement = widgetTester.element(passwordFinder);
      final passwordTextFormFieldWidget = widgetTester.findChildWidget<TextField>(passwordTextFormFieldElement);
      expect(passwordTextFormFieldWidget?.decoration?.labelText, l10n.loginPasswordText);

      final loginButtonFinder = find.byKey(kLoginButtonKey);
      final loginButtonWidget = widgetTester.widget<LoginButton>(loginButtonFinder);
      expect(loginButtonWidget.text, l10n.loginButtonText);
      expect(loginButtonWidget.enabled, false);
    });
  });
}


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
      final usernameTextFieldWidget = widgetTester.findChildWidget<TextField>(usernameFinder);
      expect(usernameTextFieldWidget?.decoration?.labelText, l10n.loginUsernameText);

      final passwordFinder = find.byKey(kPasswordFieldKey);
      final passwordTextFormFieldWidget = widgetTester.findChildWidget<TextField>(passwordFinder);
      expect(passwordTextFormFieldWidget?.decoration?.labelText, l10n.loginPasswordText);

      final loginButtonFinder = find.byKey(kLoginButtonKey);
      final loginButtonWidget = widgetTester.widget<LoginButton>(loginButtonFinder);
      expect(loginButtonWidget.text, l10n.loginButtonText);
      expect(loginButtonWidget.enabled, false);
    });

    testWidgets('LoginForm UsernameFormField test', (widgetTester) async {
      late final AppLocalizations l10n;
      final widget = Builder(
        builder: (context) {
          l10n = context.l10n;
          return LoginForm();
        },
      );
      await widgetTester.pumpSizerAndScaffold(widget);

      final usernameFinder = find.byKey(kUsernameFieldKey);
      final usernameErrorFinder = find.text(l10n.loginUsernameError);

      await widgetTester.enterText(usernameFinder, 'a');
      await widgetTester.pumpAndSettle();
      expect(usernameErrorFinder, findsOneWidget);

      await widgetTester.enterText(usernameFinder, 'abc');
      await widgetTester.pumpAndSettle();
      expect(usernameErrorFinder, findsNothing);
    });

    testWidgets('LoginForm PasswordFormField test', (widgetTester) async {
      late final AppLocalizations l10n;
      final widget = Builder(
        builder: (context) {
          l10n = context.l10n;
          return LoginForm();
        },
      );
      await widgetTester.pumpSizerAndScaffold(widget);

      final passwordFinder = find.byKey(kPasswordFieldKey);
      final passwordErrorFinder = find.text(l10n.loginPasswordError);

      await widgetTester.enterText(passwordFinder, '1');
      await widgetTester.pumpAndSettle();
      expect(passwordErrorFinder, findsOneWidget);

      await widgetTester.enterText(passwordFinder, '1234');
      await widgetTester.pumpAndSettle();
      expect(passwordErrorFinder, findsNothing);
    });

    testWidgets('LoginForm LoginButton test', (widgetTester) async {
      await widgetTester.pumpSizerAndScaffold(LoginForm());

      final loginButtonFinder = find.byKey(kLoginButtonKey);
      expect(widgetTester.widget<LoginButton>(loginButtonFinder).enabled, false);

      await widgetTester.enterText(find.byKey(kUsernameFieldKey), 'abc');
      await widgetTester.pumpAndSettle();

      await widgetTester.enterText(find.byKey(kPasswordFieldKey), '1234');
      await widgetTester.pumpAndSettle();

      expect(widgetTester.widget<LoginButton>(loginButtonFinder).enabled, true);
    });
  });
}


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_smarteam/app/constants.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_form.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:sizer/sizer.dart';

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

WidgetWrapper sizerAppWrapper() {
  return (child) => Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: kSmarteamThemeData.copyWith(platform: TargetPlatform.windows),
          home: Material(child: child),
        ),
      );
}

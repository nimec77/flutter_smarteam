import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/router/router_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_form.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import '../../../../../helpers/helpers.dart';

void main() {
  testGoldens('LoginForm render test', (tester) async {
    final widget = BlocProvider<RouterBloc>(
      create: (context) => RouterBloc(),
      child: LoginForm(),
    );
    final builder = GoldenBuilder.column()..addScenario('LoginForm', widget);
    await tester.pumpWidgetBuilder(
      builder.build(),
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_login_form');
  });
}

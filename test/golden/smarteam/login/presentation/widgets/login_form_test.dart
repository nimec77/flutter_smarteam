import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_form.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../helpers/helpers.dart';

class MockInitBlock extends Mock implements InitBloc {}

void main() {
  final mockInitBloc = MockInitBlock();

  testGoldens('LoginForm render test', (tester) async {
    final widget = BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(initBloc: mockInitBloc),
      child: LoginForm(username: '', password: ''),
    );
    final builder = GoldenBuilder.column()..addScenario('LoginForm', widget);
    await tester.pumpWidgetBuilder(
      builder.build(),
      wrapper: sizerAppWrapper(),
    );
    await screenMatchesGolden(tester, 'golden_login_form');
  });
}

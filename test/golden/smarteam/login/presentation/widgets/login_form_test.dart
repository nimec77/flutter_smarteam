import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/domain/ports/smarteam_repository.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_form.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../helpers/helpers.dart';

class MockSmarteamLoginRepository extends Mock implements SmarteamLoginRepository {}

void main() {
  final mockSmarteamLoginRepository = MockSmarteamLoginRepository();

  testGoldens('LoginForm render test', (tester) async {
    final widget = BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(mockSmarteamLoginRepository),
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

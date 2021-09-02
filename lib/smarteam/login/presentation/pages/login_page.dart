import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/common_widgets/background_widget.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_cart.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_in_progress.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          debugPrint(state.toString());
        },
        builder: (context, state) {
          final enabled = state.maybeWhen(
            loginInProgress: (_) => false,
            logoutInProgress: () => false,
            orElse: () => true,
          );
          final loginInProgress = state.maybeWhen(
            loginInProgress: (_) => true,
            orElse: () => false,
          );
          final showLoginInProgress = state.maybeWhen(
            loginInProgress: (showCancel) => showCancel,
            orElse: () => false,
          );
          return Stack(
            children: [
              const BackgroundWidget(),
              LoginCart(enabled: enabled),
              if (loginInProgress)
                AnimatedOpacity(
                  opacity: showLoginInProgress ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: LoginInProgress(
                    onCancel: () {
                      context.read<AuthBloc>().add(const AuthEvent.loginCanceled());
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

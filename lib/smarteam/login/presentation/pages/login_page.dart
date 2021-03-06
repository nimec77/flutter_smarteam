import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/app/domain/errors/smarteam_user_error.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/helpers/helper.dart' as helper;
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
          state.maybeWhen(
            loginFailure: (error) => _showErrorSnackbar(context, error),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final enabled = state.maybeMap(
            loginInProgress: (_) => false,
            logoutInProgress: (_) => false,
            orElse: () => true,
          );
          final loginShowCancel = state.maybeMap(
            loginShowCancel: (_) => true,
            orElse: () => false,
          );
          final showLoginInProgress = state.maybeWhen(
            loginShowCancel: (showCancel) => showCancel,
            orElse: () => false,
          );
          final username = state.maybeMap(
            loginInProgress: (state) => state.username,
            orElse: () => '',
          );
          final password = state.maybeMap(
            loginInProgress: (state) => state.password,
            orElse: () => '',
          );
          return Stack(
            children: [
              const BackgroundWidget(),
              LoginCart(username: username, password: password, enabled: enabled),
              if (loginShowCancel)
                AnimatedOpacity(
                  opacity: showLoginInProgress ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: LoginInProgress(
                    onCancel: () => context.read<AuthBloc>().add(const AuthEvent.loginCanceled()),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  void _showErrorSnackbar(BuildContext context, SmarteamUserError error) {
    final l10n = context.l10n;
    final String text;
    if (error is SmarteamUserErrorLogin) {
      text = l10n.invalidCredentialsText;
    } else {
      text = error.toString();
    }
    helper.showErrorSnackbars(
      context: context,
      title: l10n.snackbarErrorTitle,
      text: text,
    );
  }
}

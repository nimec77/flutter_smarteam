import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/router_cubit.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/background_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundWidget(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Login Page', style: Theme.of(context).textTheme.headline1),
              ElevatedButton(
                onPressed: () {
                  context.read<RouterCubit>().splashPage();
                },
                child: const Text('Splash Page'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

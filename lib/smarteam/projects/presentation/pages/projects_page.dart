import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smarteam'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Большой текст', style: Theme.of(context).textTheme.headline1),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.logoutStarted());
              },
              child: const Text('Выйти из Smarteam'),
            ),
          ],
        ),
      ),
    );
  }
}

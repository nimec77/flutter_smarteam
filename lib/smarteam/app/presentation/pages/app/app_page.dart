import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/router/router_bloc.dart';
import 'package:flutter_smarteam/smarteam/smarteam.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RouterBloc, RouterState>(
      listener: (context, state) => state.maybeWhen(
        loginPage: () => _navigatorKey.currentState!.pushNamedAndRemoveUntil(LoginPage.route, (route) => false),
        homePage: () => _navigatorKey.currentState!.pushNamedAndRemoveUntil(ProjectsPage.route, (route) => false),
        orElse: () => _navigatorKey.currentState!.pushNamedAndRemoveUntil(SplashPage.route, (route) => false),
      ),
      child: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (settings) {
          debugPrint(settings.toString());

          switch (settings.name) {
            case LoginPage.route:
              return PageRouteBuilder<void>(
                pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, -1),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
              );

            case ProjectsPage.route:
              return PageRouteBuilder<void>(
                pageBuilder: (context, animation, secondaryAnimation) => const ProjectsPage(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
              );
          }

          return PageRouteBuilder<void>(
            pageBuilder: (context, animation, secondaryAnimation) => const SplashPage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
      ),
    );
  }
}

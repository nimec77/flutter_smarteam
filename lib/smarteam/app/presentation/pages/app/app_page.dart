import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/pages/splash/splash_page.dart';
import 'package:flutter_smarteam/smarteam/projects/presentation/pages/projects_page.dart';
import 'package:flutter_smarteam/smarteam/smarteam.dart';

class AppPage extends StatelessWidget {
  AppPage({Key? key}) : super(key: key);

  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RouterCubit, RouterState>(
      listener: (context, state) {
        state.maybeWhen(
          loginPage: () => _navigatorKey.currentState!
              .pushNamedAndRemoveUntil(LoginPage.route, (route) => route.settings.name == '/'),
          homePage: () => _navigatorKey.currentState!
              .pushNamedAndRemoveUntil(ProjectsPage.route, (route) => route.settings.name == '/'),
          orElse: () => _navigatorKey.currentState!
              .pushNamedAndRemoveUntil(SplashPage.route, (route) => route.settings.name == '/'),
        );
      },
      child: Navigator(
        key: _navigatorKey,
        onPopPage: _handlePopPage,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case LoginPage.route:
              return PageRouteBuilder<void>(
                  pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  });

            case ProjectsPage.route:
              return MaterialPageRoute<void>(builder: (_) => const ProjectsPage());

            default:
              return PageRouteBuilder<void>(
                  pageBuilder: (context, animation, secondaryAnimation) => const SplashPage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  });
          }
        },
      ),
    );
  }

  bool _handlePopPage(Route<dynamic> route, dynamic result) {
    return route.didPop(result);
  }
}

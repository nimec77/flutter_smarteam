import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/pages/splash/splash_page.dart';
import 'package:flutter_smarteam/smarteam/smarteam.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  late final _NavigatorObs _navigatorObs;

  @override
  void initState() {
    _navigatorObs = _NavigatorObs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<RouterState>(
      state: context.select<RouterCubit, RouterState>((cubit) => cubit.state),
      onGeneratePages: (state, pages) => [
        state.maybeWhen(
          loginPage: LoginPage.page,
          orElse: SplashPage.page,
        ),
      ],
      observers: [_navigatorObs],
    );
  }
}

class _NavigatorObs extends NavigatorObserver {
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPop(route:$route, previousRoute:$previousRoute');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    debugPrint('didReplace(newRoute:$newRoute, oldRoute:$oldRoute');
  }

  @override
  void didStopUserGesture() {
    debugPrint('didStopUserGesture');
  }

  @override
  void didStartUserGesture(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didStartUserGesture(route:$route, previousRoute:$previousRoute');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didRemove(route:$route, previousRoute:$previousRoute');
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPush(route:$route, previousRoute:$previousRoute');
  }
}

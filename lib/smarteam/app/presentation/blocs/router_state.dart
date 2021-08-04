part of 'router_cubit.dart';

@immutable
abstract class RouterState {
  const RouterState();
}

class RouterSplashPage extends RouterState {
  const RouterSplashPage();

  @override
  String toString() => 'RouterSplashPage';
}

class RouterLoginPage extends RouterState {
  const RouterLoginPage();

  @override
  String toString() => 'RouterLoginPage';
}

class RouterSmarteamPage extends RouterState {
  const RouterSmarteamPage();

  @override
  String toString() => 'RouterSmarteamPage';
}

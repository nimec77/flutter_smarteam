part of 'router_cubit.dart';

@freezed
class RouterState with _$RouterState {
  const factory RouterState.splashPage() = RouterStateSplashPage;

  const factory RouterState.loginPage() = RouterStateLoginPage;

  const factory RouterState.homePage() = RouterStateHomePage;
}

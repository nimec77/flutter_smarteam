part of 'router_bloc.dart';


@freezed
class RouterEvent with _$RouterEvent {
  const factory RouterEvent.splashPageShown() = RouterEventSplashPageShown;

  const factory RouterEvent.loginPageShown() = RouterEventLoginPageShown;

  const factory RouterEvent.homePageShown() = RouterEventHomePageShown;
}
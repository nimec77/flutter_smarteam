import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'router_state.dart';

part 'router_event.dart';

part 'router_bloc.freezed.dart';

class RouterBloc extends Bloc<RouterEvent, RouterState> {
  RouterBloc() : super(const RouterState.splashPage());

  @override
  Stream<RouterState> mapEventToState(RouterEvent event) async* {
    yield* event.map(
      splashPageShown: _mapSplashPageShownToState,
      loginPageShown: _mapLoginPageShownToState,
      homePageShown: _mapHomePageShownToState,
    );
  }

  Stream<RouterState> _mapSplashPageShownToState(RouterEvent event) async* {
    yield const RouterState.splashPage();
  }

  Stream<RouterState> _mapLoginPageShownToState(RouterEvent event) async* {
    yield const RouterState.loginPage();
  }

  Stream<RouterState> _mapHomePageShownToState(RouterEvent event) async* {
    yield const RouterState.homePage();
  }
}

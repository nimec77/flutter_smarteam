import 'package:bloc/bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'router_state.dart';

part 'router_event.dart';

part 'router_bloc.freezed.dart';

class RouterBloc extends Bloc<RouterEvent, RouterState> {
  RouterBloc({required this.initBloc, required this.authBloc}) : super(const RouterState.splashPage()) {
    initBloc.stream.listen(
      (state) => state.maybeWhen(
        initSuccess: () => add(const RouterEvent.loginPageShown()),
        orElse: () {},
      ),
    );
    authBloc.stream.listen(
      (state) => state.maybeWhen(
        notAuthorized: () {
          if (initBloc.state is InitStateNotInit) {
            add(const RouterEvent.splashPageShown());
          } else {
            add(const RouterEvent.loginPageShown());
          }
        },
        loginSuccess: () => add(const RouterEvent.homePageShown()),
        orElse: () {},
      ),
    );
  }

  final InitBloc initBloc;
  final AuthBloc authBloc;

  @override
  Stream<RouterState> mapEventToState(RouterEvent event) async* {
    yield* event.map(
      splashPageShown: _mapSplashPageShownToState,
      loginPageShown: _mapLoginPageShownToState,
      homePageShown: _mapHomePageShownToState,
    );
  }

  Stream<RouterState> _mapSplashPageShownToState(RouterEventSplashPageShown event) async* {
    yield const RouterState.splashPage();
  }

  Stream<RouterState> _mapLoginPageShownToState(RouterEventLoginPageShown event) async* {
    if (initBloc.state is InitStateSuccess) {
      yield const RouterState.loginPage();
    }
  }

  Stream<RouterState> _mapHomePageShownToState(RouterEventHomePageShown event) async* {
    if (initBloc.state is InitStateSuccess && authBloc.state is AuthStateLoginSuccess) {
      yield const RouterState.homePage();
    }
  }
}

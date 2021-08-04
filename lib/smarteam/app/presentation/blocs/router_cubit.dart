import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'router_state.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit() : super(const RouterSplashPage());

  void splashPage() {
    emit(const RouterSplashPage());
  }

  void loginPage() {
    emit(const RouterLoginPage());
  }

  void smarteamPage() {
    emit(const RouterSmarteamPage());
  }
}

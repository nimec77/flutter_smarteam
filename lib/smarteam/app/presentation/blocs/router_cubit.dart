import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'router_state.dart';

part 'router_cubit.freezed.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit() : super(const RouterState.splashPage());

  void splashPage() {
    emit(const RouterState.splashPage());
  }

  void loginPage() {
    emit(const RouterState.loginPage());
  }

  void smarteamPage() {
    emit(const RouterState.homePage());
  }
}

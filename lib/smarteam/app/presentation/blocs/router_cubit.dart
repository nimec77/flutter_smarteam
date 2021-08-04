import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'router_state.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit() : super(RouterSplashPage());
}

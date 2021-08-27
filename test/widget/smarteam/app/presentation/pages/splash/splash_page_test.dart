import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/init/init_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../../helpers/helpers.dart';

class MockInitBloc extends MockBloc<InitEvent, InitState> implements InitBloc {}

void main() {
  final mockInitBloc = MockInitBloc();

}
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/smarteam/smarteam.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<RouterState>(
      state: context.select<RouterCubit, RouterState>((cubit) => cubit.state),
      onGeneratePages: (state, pages) => [
        if (state is RouterSplashPage) SplashPage.page(),
        if (state is RouterLoginPage) LoginPage.page(),
        if (state is RouterSmarteamPage) ProjectsPage.page(),
      ],
    );
  }
}

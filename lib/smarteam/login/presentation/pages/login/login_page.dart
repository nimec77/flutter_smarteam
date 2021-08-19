import 'package:flutter/material.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/background_widget.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_cart_landscape.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_cart_portrait.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(),
          OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.landscape ? const LoginCartLandscape() : const LoginCartPortrait(),
          ),
        ],
      ),
    );
  }
}

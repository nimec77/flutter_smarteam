import 'package:flutter/material.dart';
import 'package:flutter_smarteam/smarteam/login/constants.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_form.dart';

class LoginCart extends StatelessWidget {
  const LoginCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: kLandscapeLoginWidth,
        height: kLandscapeLoginHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(kLoginImage),
            fit: BoxFit.cover,
          ),
        ),
        child: const LoginForm(),
      ),
    );}
}

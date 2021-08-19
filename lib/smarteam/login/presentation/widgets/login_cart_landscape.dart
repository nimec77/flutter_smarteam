import 'package:flutter/material.dart';
import 'package:flutter_smarteam/smarteam/login/constants.dart';

class LoginCartLandscape extends StatefulWidget {
  const LoginCartLandscape({Key? key}) : super(key: key);

  @override
  _LoginCartLandscapeState createState() => _LoginCartLandscapeState();
}

class _LoginCartLandscapeState extends State<LoginCartLandscape> {
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
      ),
    );
  }
}

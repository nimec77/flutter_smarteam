import 'package:flutter/material.dart';
import 'package:flutter_smarteam/smarteam/login/constants.dart';
import 'package:sizer/sizer.dart';

class LoginCartPortrait extends StatefulWidget {
  const LoginCartPortrait({Key? key}) : super(key: key);

  @override
  _LoginCartPortraitState createState() => _LoginCartPortraitState();
}

class _LoginCartPortraitState extends State<LoginCartPortrait> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Container(
            width: kPortraitLoginWidth.w,
            height: kPortraitLoginHeight.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(kLoginImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
        );
      },
    );
  }
}

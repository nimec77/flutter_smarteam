import 'package:flutter/material.dart';
import 'package:flutter_smarteam/smarteam/login/constants.dart';
import 'package:flutter_smarteam/smarteam/login/presentation/widgets/login_form.dart';
import 'package:sizer/sizer.dart';

class LoginCartPortrait extends StatelessWidget {
  const LoginCartPortrait({Key? key}) : super(key: key);

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
            child: const LoginForm(),
          ),
        );
      },
    );
  }
}

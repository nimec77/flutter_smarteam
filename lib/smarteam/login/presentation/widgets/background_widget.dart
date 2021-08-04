import 'package:flutter/material.dart';
import 'package:flutter_smarteam/smarteam/login/constants.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topLeft,
          image: AssetImage(kBackgroundImage),
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}

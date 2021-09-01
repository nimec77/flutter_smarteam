import 'package:flutter/material.dart';

class LoginInProgress extends StatelessWidget {
  const LoginInProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const CircularProgressIndicator(),
          const Text('Login in progress'),
          TextButton(
            onPressed: () {},
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }
}

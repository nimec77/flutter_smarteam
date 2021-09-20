import 'package:flutter/material.dart';

class LoginInProgress extends StatelessWidget {
  const LoginInProgress({
    Key? key,
    this.onCancel,
    this.width,
    this.height,
    this.value,
  }) : super(key: key);

  final VoidCallback? onCancel;
  final double? width;
  final double? height;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      color: Colors.black54,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(value: value),
                const SizedBox(width: 20),
                const Text('Login in progress...'),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: onCancel,
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

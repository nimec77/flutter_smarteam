import 'package:flutter/material.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/constants.dart';

class ShowErrorWidget extends StatelessWidget {
  const ShowErrorWidget({
    Key? key,
    required this.errorMessage,
    this.onRepeat,
    this.onExit,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  final String? errorMessage;
  final VoidCallback? onRepeat;
  final VoidCallback? onExit;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      width: width,
      height: height,
      color: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage ?? '',
            key: kShowErrorTextKey,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4!.copyWith(color: Theme.of(context).primaryColor),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                key: kShowErrorRepeatButtonKey,
                onPressed: onRepeat,
                child: Text(l10n.showErrorWidgetRepeatButtonText),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                key: kShowErrorExitButtonKey,
                onPressed: onExit,
                child: Text(l10n.showErrorWidgetExitButtonText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

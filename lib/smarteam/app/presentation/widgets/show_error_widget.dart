import 'package:flutter/material.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';

class ShowErrorWidget extends StatelessWidget {
  const ShowErrorWidget({
    Key? key,
    required this.errorMessage,
    this.onRepeat,
    this.onExit,
  }) : super(key: key);

  final String? errorMessage;
  final VoidCallback? onRepeat;
  final VoidCallback? onExit;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              errorMessage ?? '',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(color: Theme.of(context).primaryColor),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onRepeat,
                  child: Text(l10n.showErrorWidgetRepeatButtonText),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: onExit,
                  child: Text(l10n.showErrorWidgetExitButtonText),
                ),
              ],
            ),
          ],
        ));
  }
}

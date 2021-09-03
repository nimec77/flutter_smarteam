import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/helpers/constants.dart';

Future<void> showErrorSnackbars({
  required BuildContext context,
  required String title,
  required String text,
}) async {
  final l10n = context.l10n;
  await showFlash(
    context: context,
    duration: kErrorSnakeDuration,
    builder: (context, controller) {
      return Flash<void>.bar(
        controller: controller,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        horizontalDismissDirection: HorizontalDismissDirection.endToStart,
        margin: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width - kSnakeWidth) / 2, vertical: 8),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        forwardAnimationCurve: Curves.easeOutBack,
        reverseAnimationCurve: Curves.slowMiddle,
        child: FlashBar(
          title: Text(
            title,
            style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
          ),
          content: Text(
            text,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          primaryAction: TextButton(
            onPressed: () => controller.dismiss(),
            style: ButtonStyle(
              foregroundColor: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.hovered)) {
                  return Theme.of(context).primaryColor;
                }
                return Colors.black;
              }),
            ),
            child: Text(l10n.snackbarHideButtonText),
          ),
          icon: Icon(Icons.error, color: Theme.of(context).errorColor),
        ),
      );
    },
  );
}

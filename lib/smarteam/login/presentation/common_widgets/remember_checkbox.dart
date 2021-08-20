import 'package:flutter/material.dart';

class RememberCheckbox extends StatelessWidget {
  const RememberCheckbox({
    Key? key,
    required this.title,
    required this.value,
    required this.enabled,
    this.onChanged,
  }) : super(key: key);

  final String title;
  final bool value;
  final bool enabled;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
      value: value,
      activeColor: Theme.of(context).primaryColor,
      onChanged: enabled ? onChanged : null,
    );
  }
}

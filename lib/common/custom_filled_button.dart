import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton(
      {super.key, required this.action, required this.buttonLabel});
  final VoidCallback action;
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(8),
          shadowColor:
              WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
          backgroundColor:
              WidgetStatePropertyAll(Theme.of(context).colorScheme.primary)),
      child: Text(
        buttonLabel,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Theme.of(context).colorScheme.surface),
      ),
    );
  }
}

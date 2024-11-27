import 'package:flutter/material.dart';
import 'package:onbroading_app/static_values/values.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {super.key,
      required this.hint,
      required this.controller,
      required this.isSecure});
  final String hint;
  final TextEditingController controller;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
          filled: true,
          fillColor: Values.baseTextInputBackgroundColor,
          contentPadding: const EdgeInsets.all(20),
          hintText: hint,
          hintStyle: const TextStyle(color: Values.baseHintTextColor),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2.0,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      controller: controller,
      obscureText: isSecure,
    );
  }
}

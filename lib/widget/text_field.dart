import 'package:flutter/material.dart';

class TextFieldCommon extends StatelessWidget {
  const TextFieldCommon({super.key, required this.label, required this.prefix});

  final String label;
  final IconData prefix;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(prefix),
          hintText: label,
          fillColor: Colors.grey.withAlpha(300),
          filled: true,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.withAlpha(300))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.withAlpha(300))),
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none),
    );
  }
}

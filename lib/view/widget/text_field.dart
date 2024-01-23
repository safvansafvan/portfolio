import 'package:flutter/material.dart';

class TextFieldCommon extends StatelessWidget {
  const TextFieldCommon({super.key, required this.label, required this.prefix});

  final String label;
  final IconData prefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.withAlpha(300),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(prefix),
              hintText: label,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}

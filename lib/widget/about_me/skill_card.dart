import 'package:flutter/material.dart';
import 'package:webapp/widget/on_hover.dart';

class SkillCard extends StatelessWidget {
  const SkillCard(
      {super.key,
      required this.path,
      required this.text,
      required this.borderColor});
  final String path;
  final String text;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return OnHoverAnimation(
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                path,
                height: 28,
                width: 28,
              ),
              const SizedBox(width: 5),
              Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}

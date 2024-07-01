import 'package:flutter/material.dart';
import 'package:webapp/widget/on_hover.dart';

class DevCard extends StatelessWidget {
  const DevCard({super.key, required this.path, required this.text});

  final String path;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OnHoverAnimation(
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(path),
                ),
              ),
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          )
        ],
      ),
    );
  }
}

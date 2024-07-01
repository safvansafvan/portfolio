import 'package:flutter/material.dart';

class OnHoverAnimation extends StatefulWidget {
  const OnHoverAnimation({super.key, required this.child});
  final Widget child;
  @override
  State<OnHoverAnimation> createState() => _OnHoverAnimationState();
}

class _OnHoverAnimationState extends State<OnHoverAnimation> {
  bool isHover = false;
  final hoverTransform = Matrix4.identity()..scale(0.9);

  @override
  Widget build(BuildContext context) {
    final transform = isHover ? hoverTransform : Matrix4.identity();
    return MouseRegion(
        onEnter: (_) => handleHover(true),
        onExit: (_) => handleHover(false),
        child: AnimatedContainer(
            curve: Easing.linear,
            transform: transform,
            duration: const Duration(milliseconds: 400),
            child: widget.child));
  }

  void handleHover(bool hover) {
    setState(() {
      isHover = hover;
    });
  }
}

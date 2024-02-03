import 'package:flutter/material.dart';

class PictureView extends StatelessWidget {
  const PictureView({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage('assets/img/my_img.png'),
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webapp/view/home/widget/body/widget/picture_view.dart';
import 'widget/my_details.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyDetails(),
          PictureView(height: 150, width: 150),
        ],
      ),
    );
  }
}

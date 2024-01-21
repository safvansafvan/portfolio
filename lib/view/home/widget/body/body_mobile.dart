import 'package:flutter/material.dart';
import 'package:webapp/view/home/widget/body/widget/picture_view.dart';
import 'package:webapp/view/home/widget/center_view.dart';
import 'widget/my_details.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CenteredView(child: MyDetails()),
        CenteredView(child: PictureView(height: 300, width: 300)),
      ],
    );
  }
}

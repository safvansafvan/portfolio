import 'package:flutter/material.dart';
import 'package:webapp/widget/header_view/widget/picture_view.dart';
import 'package:webapp/widget/center_view.dart';
import 'widget/my_details.dart';

class BodyMobile extends StatelessWidget {
  const BodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        MyDetails(),
        CenteredView(child: PictureView(height: 200, width: 200)),
      ],
    );
  }
}

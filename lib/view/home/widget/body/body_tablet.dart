import 'package:flutter/material.dart';
import 'package:webapp/view/home/widget/body/widget/picture_view.dart';
import 'package:webapp/view/home/widget/center_view.dart';
import 'widget/my_details.dart';

class BodyTab extends StatelessWidget {
  const BodyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: CenteredView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyDetails(),
            PictureView(height: 250, width: 250),
          ],
        ),
      ),
    );
  }
}

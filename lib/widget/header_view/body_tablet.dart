import 'package:flutter/material.dart';
import 'package:webapp/widget/header_view/widget/picture_view.dart';
import 'widget/my_details.dart';

class BodyTab extends StatelessWidget {
  const BodyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyDetails(),
            PictureView(height: 300, width: 300),
          ],
        ),
      ),
    );
  }
}

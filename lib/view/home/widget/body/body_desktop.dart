import 'package:flutter/material.dart';
import 'widget/my_details.dart';
import 'widget/picture_view.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: <Widget>[
          MyDetails(),
          Expanded(
            child: Center(
              child: PictureView(height: 400, width: 400),
            ),
          ),
        ],
      ),
    );
  }
}

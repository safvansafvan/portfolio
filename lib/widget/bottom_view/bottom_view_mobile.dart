import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class BottomViewMobile extends StatelessWidget {
  const BottomViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withAlpha(300),
      height: 200,
      child: Column(
        children: [
          FlutterSocialButton(
            mini: true,
            onTap: () {},
            buttonType: ButtonType.google,
            iconColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

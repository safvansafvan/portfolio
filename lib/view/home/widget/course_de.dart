import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hi there , Welcome to my space',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Image.network('assets/gif/hand.gif', width: 50, height: 50)
            ],
          ),
          const Text(
            'I Am Muhammed Safvan Kp,',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Flutter Developer',
                textStyle: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
        ],
      ),
    );
  }
}

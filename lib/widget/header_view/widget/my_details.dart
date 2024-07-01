import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:webapp/widget/on_hover.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Hi there , Welcome to my space',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              Image.asset(
                'assets/gif/hand.gif',
                width: 50,
                height: 50,
              )
            ],
          ),
          const Text(
            'I Am Muhammed Safvan Kp,',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'F l u t t e r  D e v e l o p e r',
                  textStyle: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 80),
                ),
              ],
              isRepeatingAnimation: true,
              repeatForever: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'I am a self taught flutter developer\nnow i am passionate about build mobile application\nand learn new things in programming',
              style: TextStyle(color: Colors.grey.withAlpha(200), fontSize: 15),
            ),
          ),
          const SizedBox(height: 5),
          OnHoverAnimation(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color(0xff018369),
                    foregroundColor: Colors.white),
                child: const Text('Download Cv')),
          )
        ],
      ),
    );
  }
}

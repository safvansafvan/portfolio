import 'package:flutter/material.dart';
import 'package:webapp/utils/social_buttons.dart';
import 'package:webapp/widget/text_field.dart';

class BottomViewWeb extends StatelessWidget {
  const BottomViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue.withAlpha(300),
          borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(20), right: Radius.circular(20))),
      width: double.infinity,
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screenSize.width / 2,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const TextFieldCommon(label: 'Name', prefix: Icons.person),
                const TextFieldCommon(label: 'Email', prefix: Icons.email),
                const TextFieldCommon(label: 'Subject', prefix: Icons.subject),
                const TextFieldCommon(
                    label: 'Content', prefix: Icons.content_copy),
                SizedBox(
                    width: screenSize.width / 3,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Submit')))
              ],
            ),
          ),
          SizedBox(
            width: screenSize.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Links',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Home'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Resume'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('About'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Contact'),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Links',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Privacy & Policy'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Terms & Conditions'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    const Text('Social Media',
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: socialButtons,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

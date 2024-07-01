import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:webapp/utils/constant_datas.dart';
import 'package:webapp/widget/about_me/dev_card.dart';
import 'package:webapp/widget/about_me/skill_card.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[200]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'ABOUT ME',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DevCard(
                  path: 'assets/logo/android.png',
                  text: 'Android Dev',
                ),
                DevCard(
                  path: 'assets/logo/ios.png',
                  text: 'IOS Dev',
                ),
                DevCard(
                  path: 'assets/logo/web.jpeg',
                  text: 'Web Dev',
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Center(
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: ConstAppValue.skills.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final data = ConstAppValue.skills[index];
                      log(ConstAppValue.skills.length.toString());
                      return SkillCard(
                          path: data['icon'],
                          text: data['title'],
                          borderColor: data['color']);
                    },
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: ConstAppValue.tools.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final data = ConstAppValue.tools[index];
                      log(ConstAppValue.tools.length.toString());
                      return SkillCard(
                          path: data['icon'],
                          text: data['title'],
                          borderColor: data['color']);
                    },
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: ConstAppValue.platfoms.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final data = ConstAppValue.platfoms[index];
                      log(ConstAppValue.platfoms.length.toString());
                      return SkillCard(
                          path: data['icon'],
                          text: data['title'],
                          borderColor: data['color']);
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

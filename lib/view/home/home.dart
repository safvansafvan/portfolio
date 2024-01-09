import 'package:flutter/material.dart';
import 'package:webapp/view/home/widget/appbar/app_bar_widget.dart';
import 'package:webapp/view/home/widget/button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            AppBarWidget(),
            Expanded(
              child: Row(
                children: <Widget>[
                  // CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction(title: 'Join Course'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

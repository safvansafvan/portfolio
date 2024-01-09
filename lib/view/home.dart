import 'package:flutter/material.dart';
import 'package:webapp/view/widget/appbar/app_bar_widget.dart';
import 'package:webapp/view/widget/button.dart';
import 'package:webapp/view/widget/center_view.dart';
import 'package:webapp/view/widget/course_de.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
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

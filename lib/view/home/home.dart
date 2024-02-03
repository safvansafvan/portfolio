import 'package:flutter/material.dart';
import 'package:webapp/view/home/widget/app_bar_widget.dart';
import 'package:webapp/view/home/widget/body.dart';
import 'package:webapp/view/home/widget/bottom_view.dart';
import 'package:webapp/view/utils/home_top_buttons.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: AppBarWidget(),
          ),
          Body(),
          BottomView()
        ],
      ),
      drawer: Drawer(
        width: 200,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: homeButtons,
          ),
        ),
      ),
    );
  }
}

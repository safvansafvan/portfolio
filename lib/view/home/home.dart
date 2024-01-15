import 'package:flutter/material.dart';
import 'package:webapp/view/home/widget/appbar/app_bar_widget.dart';
import 'package:webapp/view/home/widget/body/body.dart';
import 'package:webapp/view/utils/home_top_buttons.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [AppBarWidget(), Body()],
        ),
      ),
      drawer: Drawer(
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: homeButtons,
          ),
        ),
      ),
    );
  }
}

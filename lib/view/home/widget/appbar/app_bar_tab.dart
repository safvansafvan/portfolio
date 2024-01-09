import 'package:flutter/material.dart';
import 'package:webapp/view/utils/home_top_buttons.dart';

class AppBarTab extends StatelessWidget {
  const AppBarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 80),
      child: SafeArea(
        child: AppBar(
            leading: Image.asset('assets/logo.png'),
            title: const Text('Portfolio'),
            centerTitle: false,
            actions: homeButtons),
      ),
    );
  }
}

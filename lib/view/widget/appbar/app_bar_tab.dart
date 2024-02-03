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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            leading: Image.asset('assets/logo/logo.png'),
            title:
                const Text('Portfolio', style: TextStyle(color: Colors.black)),
            centerTitle: false,
            actions: homeButtons),
      ),
    );
  }
}

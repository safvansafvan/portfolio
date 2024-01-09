import 'package:flutter/material.dart';
import 'package:webapp/controller/const/const.dart';

class AppBarWeb extends StatelessWidget {
  const AppBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 80),
      child: SafeArea(
        child: AppBar(
          leading: Image.asset('assets/logo.png'),
          title: const Text('Portfolio'),
          centerTitle: false,
          actions: [
            TextButton(
                onPressed: () {}, child: Text('Home', style: appBarTitleStyle)),
            TextButton(
                onPressed: () {},
                child: Text('Resume', style: appBarTitleStyle)),
            TextButton(
                onPressed: () {},
                child: Text('About', style: appBarTitleStyle)),
            TextButton(
                onPressed: () {},
                child: Text('Contact', style: appBarTitleStyle)),
          ],
        ),
      ),
    );
  }
}
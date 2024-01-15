import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 80),
      child: SafeArea(
        child: AppBar(
          leading: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu)),
          title: const Text('Portfolio'),
          centerTitle: false,
          actions: [
            Image.asset('assets/logo/logo.png'),
          ],
        ),
      ),
    );
  }
}

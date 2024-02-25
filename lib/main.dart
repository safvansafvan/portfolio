import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/view/home/home.dart';
import 'package:webapp/view/utils/init_classes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Init().initClasses();
    return GetMaterialApp(
      title: 'portfolio',
      theme: ThemeData(
        focusColor: Colors.black,
        fontFamily: GoogleFonts.raleway().fontFamily,
        appBarTheme: const AppBarTheme(color: Colors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}

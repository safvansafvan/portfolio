import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp/widget/appbar/app_bar_mobile.dart';
import 'package:webapp/widget/appbar/app_bar_tab.dart';
import 'package:webapp/widget/appbar/app_bar_web.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const AppBarWeb();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return const AppBarMobile();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const AppBarTab();
        }
        return const SizedBox();
      },
    );
  }
}

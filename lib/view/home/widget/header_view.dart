import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp/widget/header_view/body_desktop.dart';
import 'package:webapp/widget/header_view/body_mobile.dart';
import 'package:webapp/widget/header_view/body_tablet.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const BodyDesktop();
          }
          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const BodyTab();
          }
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return const BodyMobile();
          }
          return const SizedBox();
        },
      ),
    );
  }
}

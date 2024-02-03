import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp/view/widget/body/body_desktop.dart';
import 'package:webapp/view/widget/body/body_mobile.dart';
import 'package:webapp/view/widget/body/body_tablet.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
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
    );
  }
}

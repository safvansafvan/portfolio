import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp/widget/bottom_view/bottom_view_mobile.dart';
import 'package:webapp/widget/bottom_view/bottom_view_web.dart';

class BottomView extends StatelessWidget {
  const BottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const BottomViewWeb();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return const BottomViewMobile();
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const BottomViewWeb();
        }
        return const SizedBox();
      },
    );
  }
}

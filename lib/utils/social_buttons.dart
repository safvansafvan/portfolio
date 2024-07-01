import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:webapp/widget/on_hover.dart';

List<Widget> socialButtons = [
  OnHoverAnimation(
    child: FlutterSocialButton(
      mini: true,
      onTap: () {},
      buttonType: ButtonType.google,
      iconColor: Colors.white,
    ),
  ),
  OnHoverAnimation(
    child: FlutterSocialButton(
      mini: true,
      onTap: () {},
      buttonType: ButtonType.facebook,
      iconColor: Colors.white,
    ),
  ),
  OnHoverAnimation(
    child: FlutterSocialButton(
      mini: true,
      onTap: () {},
      buttonType: ButtonType.github,
      iconColor: Colors.white,
    ),
  ),
  OnHoverAnimation(
    child: FlutterSocialButton(
      mini: true,
      onTap: () {},
      buttonType: ButtonType.linkedin,
      iconColor: Colors.white,
    ),
  ),
  OnHoverAnimation(
    child: FlutterSocialButton(
      mini: true,
      onTap: () {},
      buttonType: ButtonType.whatsapp,
      iconColor: Colors.white,
    ),
  ),
];

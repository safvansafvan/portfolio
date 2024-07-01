import 'package:flutter/material.dart';

import '../controller/const/const.dart';
import '../widget/on_hover.dart';

List<Widget> homeButtons = [
  OnHoverAnimation(
    child: TextButton(
        style: bstyle,
        onPressed: () {},
        child: Text('Home', style: appBarTitleStyle)),
  ),
  OnHoverAnimation(
      child: TextButton(
          style: bstyle,
          onPressed: () {},
          child: Text('Resume', style: appBarTitleStyle))),
  OnHoverAnimation(
      child: TextButton(
          style: bstyle,
          onPressed: () {},
          child: Text('About', style: appBarTitleStyle))),
  Padding(
    padding: const EdgeInsets.only(right: 30),
    child: OnHoverAnimation(
      child: TextButton(
          onPressed: () {},
          style: bstyle,
          child: Text('Contact', style: appBarTitleStyle)),
    ),
  ),
];

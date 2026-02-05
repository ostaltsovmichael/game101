import 'package:account_entry/ui/colors/colors_app.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  ColorsApp colors = ColorsApp();

  TextStyle get text600on18 => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: colors.purpure,
  );

  TextStyle titleTextStartScreen = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  TextStyle welcomeTitleStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  TextStyle buttonTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  TextStyle nameCountTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  TextStyle get countTextStyle => TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: colors.purpure,
  );

  TextStyle get liderTitleTextStyle =>
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: colors.white);
}

import 'package:account_entry/ui/colors/colors_app.dart';
import 'package:flutter/material.dart';

class ButtonStalesApp {
  final colorsApp = ColorsApp();

  ButtonStyle get buttonStyleApp => ElevatedButton.styleFrom(
    backgroundColor: colorsApp.purpure,
    foregroundColor: colorsApp.white,
    padding: EdgeInsets.all(12),
  );
}

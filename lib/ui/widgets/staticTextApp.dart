import 'package:account_entry/ui/styles/text_stales.dart';
import 'package:account_entry/ui/colors/colors_app.dart';
import 'package:flutter/material.dart';

class StaticTextApp extends StatelessWidget {
  StaticTextApp({super.key, required String text}) : _text = text;

  final textStyle = AppTextStyle();
  final _colorsApp = ColorsApp();
  final String _text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode
          .srcIn, // Позволяет градиенту отображаться только поверх текста
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          _colorsApp.appFonLeftColor,
          _colorsApp.appFonRightColor,

          //  Colors.purple
        ],
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(_text, style: textStyle.titleTextStartScreen),
    );
  }
}

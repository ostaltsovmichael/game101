import 'package:account_entry/ui/styles/text_stales.dart';
import 'package:account_entry/ui/colors/colors_app.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Logo({super.key});

  final appTextStyle = AppTextStyle();
  final colorsApp = ColorsApp();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorsApp.cardLeftColor, colorsApp.cardRigtColor],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 60,
      height: 100,
      child: const Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
              child: Icon(Icons.favorite, size: 16),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Icon(Icons.favorite, size: 32),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 2, 2),
              child: Icon(Icons.favorite, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}

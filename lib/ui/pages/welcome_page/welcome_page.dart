import 'package:account_entry/ui/colors/colors_app.dart';
import 'package:account_entry/ui/pages/welcome_page/widgets/welcome_card.dart';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final _colorsApp = ColorsApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              _colorsApp.appBackgroundGradientLeft,
              _colorsApp.appBackgroundGradientRight],
          ),
        ),

        child: WelcomeCard(),
      ),
    );
  }
}

import 'package:account_entry/ui/styles/button_stales.dart';

import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  ButtonApp({
    super.key,
    required this.nameButton,
    required this.textStaleButton,
    required this.action,
  });

  final String nameButton;
  final TextStyle textStaleButton;
  final Function action;

  final _buttonTextStyle = ButtonStalesApp();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _buttonTextStyle.buttonStyleApp,
      onPressed: () {
        action();
      },

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(nameButton, style: textStaleButton)],
      ),
    );
  }
}

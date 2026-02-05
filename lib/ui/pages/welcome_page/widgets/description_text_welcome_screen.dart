import 'package:account_entry/generated/l10n.dart';
import 'package:flutter/material.dart';

class DescriptionTextWelcomeScreen extends StatelessWidget {
  const DescriptionTextWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Text(
        S.of(context).startGameDescription,
        textAlign: TextAlign.center,
        style: TextStyle(height: 1.1),
      ),
    );
  }
}

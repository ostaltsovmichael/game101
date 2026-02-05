import 'package:account_entry/generated/l10n.dart';
import 'package:account_entry/repository/router_repository.dart';
import 'package:account_entry/ui/pages/welcome_page/widgets/logo.dart';
import 'package:account_entry/ui/styles/text_stales.dart';
import 'package:account_entry/ui/widgets/appButton.dart';
import 'package:account_entry/ui/pages/welcome_page/widgets/description_text_welcome_screen.dart';
import 'package:account_entry/ui/widgets/staticTextApp.dart';
import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  WelcomeCard({super.key});

  final RouterRepository _routerService = RouterRepository();
  final AppTextStyle _textStyle = AppTextStyle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 98, 24, 198),

      child: Center(
        child: Card(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 200,
              maxWidth: 400,
              minHeight: 350,
              maxHeight: 500,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Logo(),
                  const SizedBox(height: 24),
                  StaticTextApp(name: S().startGame),
                  const SizedBox(height: 12),
                  const DescriptionTextWelcomeScreen(),
                  const SizedBox(height: 12),
                  ButtonApp(
                    nameButton: S.of(context).startGame,
                    textStaleButton: _textStyle.buttonTextStyle,
                    action: () {
                      _routerService.navigateToCreateGamePage(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

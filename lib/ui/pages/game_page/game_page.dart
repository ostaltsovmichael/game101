import 'package:account_entry/repository/router_repository.dart';
import 'package:account_entry/repository/user_repository.dart';
import 'package:account_entry/ui/colors/colors_app.dart';

import 'package:account_entry/ui/pages/game_page/widgets/list_user_widget_games.dart';
import 'package:account_entry/ui/pages/game_page/widgets/raund_widget.dart';
import 'package:account_entry/ui/styles/text_stales.dart';
import 'package:account_entry/ui/widgets/appButton.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key});

  final _colorsApp = ColorsApp();
  final _textStyleApp = AppTextStyle();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserRepository>(context);
    final routerProvider = Provider.of<RouterRepository>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [_colorsApp.fonAppLeftColor, _colorsApp.fonAppRigtColor],
          ),
        ),

        child: Column(
          children: [
            Center(child: RaundWidget()),
            Expanded(child: ListUserWidgetGames()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonApp(
                nameButton: 'Завершить игру',
                textStaleButton: _textStyleApp.buttonTextStyle,
                action: () {
                  userProvider.daleteAll();
                  //userProvider.closeDb();
                  routerProvider.navigateToWelcomePage(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

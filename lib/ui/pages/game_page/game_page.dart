import 'package:account_entry/generated/l10n.dart';
import 'package:account_entry/repository/user_repository.dart';
import 'package:account_entry/ui/colors/colors_app.dart';
import 'package:account_entry/ui/pages/game_page/widgets/list_user_widget_games.dart';
import 'package:account_entry/ui/pages/game_page/widgets/raund_widget.dart';
import 'package:account_entry/ui/widgets/staticTextApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key});

  final _colorsApp = ColorsApp();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserRepository>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              _colorsApp.appBackgroundGradientLeft,
              _colorsApp.appBackgroundGradientRight,
            ],
          ),
        ),

        child: Column(
          children: [
            Center(child: RaundWidget()),
            Expanded(child: ListUserWidgetGames()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  userProvider.allPointsZero();
                },
                child: StaticTextApp(text: S.of(context).finish_game),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

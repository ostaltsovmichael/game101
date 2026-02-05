import 'package:account_entry/ui/pages/create_users_page/create_users_page.dart';
import 'package:account_entry/ui/pages/game_page/game_page.dart';
import 'package:account_entry/ui/pages/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

class RoutersConect {
  static String creatUserPage = '/create_user_page';
  static String welcomePage = '/';
  static String gamePage = '/game_page';

  String creatUserPageRout = creatUserPage;
  String welcomePageRout = welcomePage;
  String gamePageRout = gamePage;

  Map<String, Widget Function(BuildContext)> routesMap = {
    welcomePage: (context) => WelcomePage(),
    creatUserPage: (context) => CreateUsersPage(),
    gamePage: (context) => GamePage(),
  };
}

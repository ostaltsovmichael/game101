import 'package:account_entry/router/routers.dart';
import 'package:flutter/material.dart';

class RouterRepository {
  final _routersConect = RoutersConect();

  void navigateToGamePage(BuildContext context) {
    Navigator.pushNamed(context, _routersConect.gamePageRout);
  }

  void navigateToCreateGamePage(BuildContext context) {
    Navigator.pushNamed(context, _routersConect.creatUserPageRout);
  }

  void navigateToWelcomePage(BuildContext context) {
    Navigator.pushNamed(context, _routersConect.welcomePageRout);
  }

  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}

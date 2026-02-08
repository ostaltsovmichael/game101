import 'package:account_entry/generated/l10n.dart' show S;
import 'package:account_entry/repository/user_repository.dart';
import 'package:account_entry/router/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    AppLifecycleListener(
      onDetach: () {
        UserRepository().closeDb();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Map<String, Widget Function(BuildContext)> connectRouts =
        RoutersConect().routesMap;

    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: connectRouts,
      initialRoute: '/',
    );
  }
}

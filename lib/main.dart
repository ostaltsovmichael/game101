import 'package:account_entry/app.dart';
import 'package:account_entry/conect/conectProvidersServises.dart';
import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:provider/provider.dart';

var logger = Logger();

void main() {
  runApp(
    MultiProvider(
      providers: ConectProvideresServises().providers,

      child: App(),
    ),
  );
}

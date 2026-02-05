// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Start Screen`
  String get startScreen {
    return Intl.message(
      'Start Screen',
      name: 'startScreen',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message('Start', name: 'start', desc: '', args: []);
  }

  /// `Game в 101`
  String get game101 {
    return Intl.message('Game в 101', name: 'game101', desc: '', args: []);
  }

  /// `For strt game need 2 and more players`
  String get startGameDescription {
    return Intl.message(
      'For strt game need 2 and more players',
      name: 'startGameDescription',
      desc: '',
      args: [],
    );
  }

  /// `Start games`
  String get startGame {
    return Intl.message('Start games', name: 'startGame', desc: '', args: []);
  }

  /// `Close`
  String get close {
    return Intl.message('Close', name: 'close', desc: '', args: []);
  }

  /// `Score: `
  String get score {
    return Intl.message('Score: ', name: 'score', desc: '', args: []);
  }

  /// `Change`
  String get change {
    return Intl.message('Change', name: 'change', desc: '', args: []);
  }

  /// `Внимание`
  String get attention {
    return Intl.message('Внимание', name: 'attention', desc: '', args: []);
  }

  /// `Проигрыш`
  String get loss {
    return Intl.message('Проигрыш', name: 'loss', desc: '', args: []);
  }

  /// `Завершить игру`
  String get finish_game {
    return Intl.message(
      'Завершить игру',
      name: 'finish_game',
      desc: '',
      args: [],
    );
  }

  /// `Завершить раунд`
  String get finish_raund {
    return Intl.message(
      'Завершить раунд',
      name: 'finish_raund',
      desc: '',
      args: [],
    );
  }

  /// `Имя...`
  String get name_points {
    return Intl.message('Имя...', name: 'name_points', desc: '', args: []);
  }

  /// `Добавить`
  String get add {
    return Intl.message('Добавить', name: 'add', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Intra 42`
  String get app_title {
    return Intl.message(
      'Intra 42',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message(
      'Unavailable',
      name: 'unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Evaluations Points`
  String get evaluations_points {
    return Intl.message(
      'Evaluations Points',
      name: 'evaluations_points',
      desc: '',
      args: [],
    );
  }

  /// `Cursus`
  String get cursus {
    return Intl.message(
      'Cursus',
      name: 'cursus',
      desc: '',
      args: [],
    );
  }

  /// `Grade`
  String get grade {
    return Intl.message(
      'Grade',
      name: 'grade',
      desc: '',
      args: [],
    );
  }

  /// `Days left`
  String get days_left {
    return Intl.message(
      'Days left',
      name: 'days_left',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `%d students`
  String get count_students {
    return Intl.message(
      '%d students',
      name: 'count_students',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe to waitlist`
  String get sub_to_waitlist {
    return Intl.message(
      'Subscribe to waitlist',
      name: 'sub_to_waitlist',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe`
  String get sub {
    return Intl.message(
      'Subscribe',
      name: 'sub',
      desc: '',
      args: [],
    );
  }

  /// `The event is full`
  String get event_is_full {
    return Intl.message(
      'The event is full',
      name: 'event_is_full',
      desc: '',
      args: [],
    );
  }

  /// `logtime : %d:%d`
  String get logtime_format {
    return Intl.message(
      'logtime : %d:%d',
      name: 'logtime_format',
      desc: '',
      args: [],
    );
  }

  /// `%d Vacant posts`
  String get vacant_post {
    return Intl.message(
      '%d Vacant posts',
      name: 'vacant_post',
      desc: '',
      args: [],
    );
  }

  /// `Live`
  String get live {
    return Intl.message(
      'Live',
      name: 'live',
      desc: '',
      args: [],
    );
  }

  /// `logged on`
  String get logged_on {
    return Intl.message(
      'logged on',
      name: 'logged_on',
      desc: '',
      args: [],
    );
  }

  /// `logged off`
  String get logged_off {
    return Intl.message(
      'logged off',
      name: 'logged_off',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get info {
    return Intl.message(
      'Info',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `Evaluation`
  String get evaluation {
    return Intl.message(
      'Evaluation',
      name: 'evaluation',
      desc: '',
      args: [],
    );
  }

  /// `Agenda`
  String get agenda {
    return Intl.message(
      'Agenda',
      name: 'agenda',
      desc: '',
      args: [],
    );
  }

  /// `Logtime`
  String get logtime {
    return Intl.message(
      'Logtime',
      name: 'logtime',
      desc: '',
      args: [],
    );
  }

  /// `Expertises`
  String get expertises {
    return Intl.message(
      'Expertises',
      name: 'expertises',
      desc: '',
      args: [],
    );
  }

  /// `Achievements`
  String get achievements {
    return Intl.message(
      'Achievements',
      name: 'achievements',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get skills {
    return Intl.message(
      'Skills',
      name: 'skills',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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

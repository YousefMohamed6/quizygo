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

  /// `Real partner 🗝❤`
  String get testPartner {
    return Intl.message(
      'Real partner 🗝❤',
      name: 'testPartner',
      desc: '',
      args: [],
    );
  }

  /// `How well dose you partner know you ?`
  String get subTitlePartener {
    return Intl.message(
      'How well dose you partner know you ?',
      name: 'subTitlePartener',
      desc: '',
      args: [],
    );
  }

  /// `Test your friends ✌🏻❤`
  String get testFriend {
    return Intl.message(
      'Test your friends ✌🏻❤',
      name: 'testFriend',
      desc: '',
      args: [],
    );
  }

  /// `How well do your friends know you ?`
  String get testFriendSubTitle {
    return Intl.message(
      'How well do your friends know you ?',
      name: 'testFriendSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `😍 Test Your Partnership 😉`
  String get testPartnerIntro {
    return Intl.message(
      '😍 Test Your Partnership 😉',
      name: 'testPartnerIntro',
      desc: '',
      args: [],
    );
  }

  /// `Does your Partner really know you?`
  String get subTitlePartenerIntro {
    return Intl.message(
      'Does your Partner really know you?',
      name: 'subTitlePartenerIntro',
      desc: '',
      args: [],
    );
  }

  /// `😍 Test Your Friendship 😉`
  String get testFriendIntro {
    return Intl.message(
      '😍 Test Your Friendship 😉',
      name: 'testFriendIntro',
      desc: '',
      args: [],
    );
  }

  /// `Do your friends really know you?`
  String get testFriendSubTitleIntro {
    return Intl.message(
      'Do your friends really know you?',
      name: 'testFriendSubTitleIntro',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Name`
  String get validation {
    return Intl.message(
      'Enter your Name',
      name: 'validation',
      desc: '',
      args: [],
    );
  }

  /// `Tips !`
  String get tips {
    return Intl.message(
      'Tips !',
      name: 'tips',
      desc: '',
      args: [],
    );
  }

  /// `✍️ Enter Your Name`
  String get enterName {
    return Intl.message(
      '✍️ Enter Your Name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `❓ Answer any 15 questions about yourself.`
  String get answer {
    return Intl.message(
      '❓ Answer any 15 questions about yourself.',
      name: 'answer',
      desc: '',
      args: [],
    );
  }

  /// `📢 Share your quiz-link with your Friends\n& Family.`
  String get share {
    return Intl.message(
      '📢 Share your quiz-link with your Friends\n& Family.',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `🤔 Your friends will try to guess the right answers.`
  String get guess {
    return Intl.message(
      '🤔 Your friends will try to guess the right answers.',
      name: 'guess',
      desc: '',
      args: [],
    );
  }

  /// `🥇 Check the score of your Friends at\n your quiz-link!`
  String get check {
    return Intl.message(
      '🥇 Check the score of your Friends at\n your quiz-link!',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `language`
  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get terms {
    return Intl.message(
      'Terms of Use',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact {
    return Intl.message(
      'Contact Us',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
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
      Locale.fromSubtags(languageCode: 'ar'),
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

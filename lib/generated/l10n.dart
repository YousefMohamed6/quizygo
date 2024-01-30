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

  /// `😍 Test Your Partner 😉`
  String get testPartnerIntro {
    return Intl.message(
      '😍 Test Your Partner 😉',
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

  /// `Enter Your Name ✍️`
  String get enterName {
    return Intl.message(
      'Enter Your Name ✍️',
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
  String get shareFriend {
    return Intl.message(
      '📢 Share your quiz-link with your Friends\n& Family.',
      name: 'shareFriend',
      desc: '',
      args: [],
    );
  }

  /// `🤔 Your friends & Family will try to guess the right answers.`
  String get guessFriend {
    return Intl.message(
      '🤔 Your friends & Family will try to guess the right answers.',
      name: 'guessFriend',
      desc: '',
      args: [],
    );
  }

  /// `🥇 Check the score of your Friends & Family at\n your quiz-link!`
  String get checkFriend {
    return Intl.message(
      '🥇 Check the score of your Friends & Family at\n your quiz-link!',
      name: 'checkFriend',
      desc: '',
      args: [],
    );
  }

  /// `📢 Share your quiz-link with your Partner.`
  String get sharePartner {
    return Intl.message(
      '📢 Share your quiz-link with your Partner.',
      name: 'sharePartner',
      desc: '',
      args: [],
    );
  }

  /// `🤔 Your Partner will try to guess the correct answers.`
  String get guessPartner {
    return Intl.message(
      '🤔 Your Partner will try to guess the correct answers.',
      name: 'guessPartner',
      desc: '',
      args: [],
    );
  }

  /// `🥇 Check the score of your Partner at\n quiz-link!`
  String get checkPartner {
    return Intl.message(
      '🥇 Check the score of your Partner at\n quiz-link!',
      name: 'checkPartner',
      desc: '',
      args: [],
    );
  }

  /// `language         `
  String get language {
    return Intl.message(
      'language         ',
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

  /// `Copy link`
  String get copylink {
    return Intl.message(
      'Copy link',
      name: 'copylink',
      desc: '',
      args: [],
    );
  }

  /// `link Copied`
  String get copyLinkMessage {
    return Intl.message(
      'link Copied',
      name: 'copyLinkMessage',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get shareOn {
    return Intl.message(
      'Share',
      name: 'shareOn',
      desc: '',
      args: [],
    );
  }

  /// `Share on WhatsApp`
  String get shareWhats {
    return Intl.message(
      'Share on WhatsApp',
      name: 'shareWhats',
      desc: '',
      args: [],
    );
  }

  /// `Share on Twitter`
  String get shareTwitter {
    return Intl.message(
      'Share on Twitter',
      name: 'shareTwitter',
      desc: '',
      args: [],
    );
  }

  /// `Share this quiz with your friends and family to see who gets maximum score`
  String get ShareMessagefriend {
    return Intl.message(
      'Share this quiz with your friends and family to see who gets maximum score',
      name: 'ShareMessagefriend',
      desc: '',
      args: [],
    );
  }

  /// `Share this quiz with your partner to see what score your partner will get`
  String get ShareMessagePartner {
    return Intl.message(
      'Share this quiz with your partner to see what score your partner will get',
      name: 'ShareMessagePartner',
      desc: '',
      args: [],
    );
  }

  /// `Your Quiz link is ready!`
  String get quizReady {
    return Intl.message(
      'Your Quiz link is ready!',
      name: 'quizReady',
      desc: '',
      args: [],
    );
  }

  /// `Congrats`
  String get Congrats {
    return Intl.message(
      'Congrats',
      name: 'Congrats',
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

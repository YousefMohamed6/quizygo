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

  /// `Real Partner 🗝❤`
  String get testPartner {
    return Intl.message(
      'Real Partner 🗝❤',
      name: 'testPartner',
      desc: '',
      args: [],
    );
  }

  /// `How well dose your partner know you ?`
  String get subTitlePartener {
    return Intl.message(
      'How well dose your partner know you ?',
      name: 'subTitlePartener',
      desc: '',
      args: [],
    );
  }

  /// `Test your Friends ✌🏻❤`
  String get testFriend {
    return Intl.message(
      'Test your Friends ✌🏻❤',
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

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get score {
    return Intl.message(
      'Score',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `link Sharing Page`
  String get linkSharingPage {
    return Intl.message(
      'link Sharing Page',
      name: 'linkSharingPage',
      desc: '',
      args: [],
    );
  }

  /// `Score Board Of `
  String get scoreBoardOf {
    return Intl.message(
      'Score Board Of ',
      name: 'scoreBoardOf',
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

  /// `Enter the id of friend or Partner`
  String get enterId {
    return Intl.message(
      'Enter the id of friend or Partner',
      name: 'enterId',
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

  /// `❓ Answer 15 questions about yourself.`
  String get answer {
    return Intl.message(
      '❓ Answer 15 questions about yourself.',
      name: 'answer',
      desc: '',
      args: [],
    );
  }

  /// `Answer 15 questions about your Friend or Partner.`
  String get answerid {
    return Intl.message(
      'Answer 15 questions about your Friend or Partner.',
      name: 'answerid',
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

  /// `🥇 Check the score of your Friends & Family at your quiz-link!`
  String get checkFriend {
    return Intl.message(
      '🥇 Check the score of your Friends & Family at your quiz-link!',
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

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
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

  /// `link Copied`
  String get copyLink {
    return Intl.message(
      'link Copied',
      name: 'copyLink',
      desc: '',
      args: [],
    );
  }

  /// `Id Copied`
  String get copyId {
    return Intl.message(
      'Id Copied',
      name: 'copyId',
      desc: '',
      args: [],
    );
  }

  /// `Start new Quiz`
  String get copyErrorMessage {
    return Intl.message(
      'Start new Quiz',
      name: 'copyErrorMessage',
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

  /// `Answer questions about your Friend`
  String get answerFriend {
    return Intl.message(
      'Answer questions about your Friend',
      name: 'answerFriend',
      desc: '',
      args: [],
    );
  }

  /// `Answer questions about your Partner`
  String get answerPartner {
    return Intl.message(
      'Answer questions about your Partner',
      name: 'answerPartner',
      desc: '',
      args: [],
    );
  }

  /// `Check your score in the scoreboard`
  String get check {
    return Intl.message(
      'Check your score in the scoreboard',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `Start now`
  String get startNow {
    return Intl.message(
      'Start now',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `view Result`
  String get showScoreboard {
    return Intl.message(
      'view Result',
      name: 'showScoreboard',
      desc: '',
      args: [],
    );
  }

  /// `Your score:`
  String get yourScore {
    return Intl.message(
      'Your score:',
      name: 'yourScore',
      desc: '',
      args: [],
    );
  }

  /// `Your level:`
  String get yourLevel {
    return Intl.message(
      'Your level:',
      name: 'yourLevel',
      desc: '',
      args: [],
    );
  }

  /// `It''s your turn! Now you can challenge your friends.`
  String get chellange {
    return Intl.message(
      'It\'\'s your turn! Now you can challenge your friends.',
      name: 'chellange',
      desc: '',
      args: [],
    );
  }

  /// `Create your own quiz`
  String get createQuiz {
    return Intl.message(
      'Create your own quiz',
      name: 'createQuiz',
      desc: '',
      args: [],
    );
  }

  /// `Low`
  String get low {
    return Intl.message(
      'Low',
      name: 'low',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get medium {
    return Intl.message(
      'Medium',
      name: 'medium',
      desc: '',
      args: [],
    );
  }

  /// `High`
  String get high {
    return Intl.message(
      'High',
      name: 'high',
      desc: '',
      args: [],
    );
  }

  /// `How well you know `
  String get FriendSubTitleAnswer {
    return Intl.message(
      'How well you know ',
      name: 'FriendSubTitleAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Quizlink is Exparied ,please create new quiz`
  String get correctId {
    return Intl.message(
      'Quizlink is Exparied ,please create new quiz',
      name: 'correctId',
      desc: '',
      args: [],
    );
  }

  /// `No Score Found`
  String get noScore {
    return Intl.message(
      'No Score Found',
      name: 'noScore',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the QuizGo website`
  String get welcome {
    return Intl.message(
      'Welcome to the QuizGo website',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `share link is not found create new quiz`
  String get noShareLink {
    return Intl.message(
      'share link is not found create new quiz',
      name: 'noShareLink',
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

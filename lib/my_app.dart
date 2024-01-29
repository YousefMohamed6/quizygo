import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/features/ask/friends/presentation/friends_ask_view.dart';
import 'package:quizygo/features/ask/partners/presentation/partner_ask_view.dart';
import 'package:quizygo/features/home/presentation/home_view.dart';
import 'package:quizygo/features/intro/friends/presentation/friends_intro_view.dart';
import 'package:quizygo/features/intro/partners/presentation/partner_view.dart';
import 'package:quizygo/features/menu/presentation/views/about_us.dart';
import 'package:quizygo/features/menu/presentation/views/contact.dart';
import 'package:quizygo/features/menu/presentation/views/private_policy.dart';
import 'package:quizygo/features/share/presentation/share_view.dart';
import 'package:quizygo/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp._();
  static const instance = MyApp._();
  factory MyApp() => instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnswerCubit, AnswerState>(
        buildWhen: (previous, current) => current is ChangeLanguage,
        builder: (context, state) {
          return MaterialApp(
            title: 'َQuizyGo',
            locale: BlocProvider.of<AnswerCubit>(context).isArabic
                ? const Locale("ar")
                : const Locale("en"),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: const HomeView(),
            initialRoute: HomeView.id,
            // applies this theme if the device theme is light mode
            theme: ThemeData.light(),
            // applies this theme if the device theme is dark mode
            darkTheme: ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            routes: {
              HomeView.id: (context) => const HomeView(),
              FriendsIntroView.id: (context) => const FriendsIntroView(),
              PartnerIntroView.id: (context) => const PartnerIntroView(),
              AboutUs.id: (context) => const AboutUs(),
              Contact.id: (context) => const Contact(),
              PrivatePolicy.id: (context) => const PrivatePolicy(),
              FriendsAskView.id: (context) => const FriendsAskView(),
              PartnerAskView.id: (context) => const PartnerAskView(),
              ShareLinkView.id: (context) => const ShareLinkView(),
            },
          );
        });
  }
}

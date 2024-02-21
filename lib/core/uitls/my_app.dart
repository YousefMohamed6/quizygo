import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/uitls/app_route.dart';
import 'package:quizygo/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp._();
  static const instance = MyApp._();
  factory MyApp() => instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizCubit, QuizState>(
      buildWhen: (previous, current) => current is ChangeLanguage,
      builder: (context, state) {
        return MaterialApp.router(
          title: 'َquizygo',
          locale: BlocProvider.of<QuizCubit>(context).isArabic
              ? const Locale("ar")
              : const Locale("en"),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          // applies this theme if the device theme is light mode
          theme: ThemeData.light(),
          // applies this theme if the device theme is dark mode
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          routerConfig: RouterManager.routerConfig,
        );
      },
    );
  }
}

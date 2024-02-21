import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageMenu extends StatelessWidget {
  const LanguageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Text(S.of(context).language),
      iconSize: 32,
      padding: const EdgeInsets.only(left: 24, right: 24),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'ar',
          child: Text(S.of(context).arabic),
        ),
        PopupMenuItem(
          value: 'en',
          child: Text(S.of(context).english),
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case "ar":
            BlocProvider.of<QuizCubit>(context).changeLanguage(isArabic: true);
            Navigator.pop(context);
            break;
          case "en":
            BlocProvider.of<QuizCubit>(context).changeLanguage(isArabic: false);
            Navigator.pop(context);
            break;
        }
      },
    );
  }
}

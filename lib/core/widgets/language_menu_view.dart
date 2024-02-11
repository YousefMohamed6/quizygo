import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageMenuView extends StatelessWidget {
  const LanguageMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).height * 0.1),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.borderSideColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: PopupMenuButton(
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.of(context).language,
                style: TextStyle(
                  fontSize: MediaQuery.sizeOf(context).height * 0.030,
                  color: Colors.red,
                ),
              ),
              const SizedBox(width: 8),
              Image.asset(
                "assats/images/arrow.png",
                height: MediaQuery.sizeOf(context).height * 0.024,
              ),
            ],
          ),
        ),
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
              BlocProvider.of<AnswerCubit>(context)
                  .changeLanguage(isArabic: true);
              break;
            case "en":
              BlocProvider.of<AnswerCubit>(context)
                  .changeLanguage(isArabic: false);
              break;
          }
        },
      ),
    );
  }
}

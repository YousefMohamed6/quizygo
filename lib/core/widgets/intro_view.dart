import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/ask_tips.dart';
import 'package:QuizyGo/core/widgets/custom_button.dart';
import 'package:QuizyGo/core/widgets/name_text_feild.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroView extends StatelessWidget {
  const IntroView(
      {super.key,
      required this.formKey,
      required this.title,
      required this.subTitle,
      required this.onPressed,
      this.tipsType});
  final GlobalKey<FormState> formKey;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  final Widget? tipsType;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: ColorManager.borderSideColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: MediaQuery.sizeOf(context).height * 0.030,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.sizeOf(context).height * 0.025,
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 16),
              PopupMenuButton(
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
              const SizedBox(height: 8),
              NameTextFeild(
                  controller:
                      BlocProvider.of<AnswerCubit>(context).userNameCtrl),
              const SizedBox(height: 16),
              CustomButton(
                onPressed: onPressed,
              ),
              const SizedBox(height: 16),
              tipsType ?? const AskTips(),
            ],
          ),
        ),
      ),
    );
  }
}

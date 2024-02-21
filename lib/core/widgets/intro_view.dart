import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/ask_tips.dart';
import 'package:quizygo/core/widgets/custom_button.dart';
import 'package:quizygo/core/widgets/language_menu_view.dart';
import 'package:quizygo/core/widgets/name_text_feild.dart';

class CustomIntroView extends StatelessWidget {
  const CustomIntroView(
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
              const LanguageMenuView(),
              const SizedBox(height: 8),
              NameTextFeild(
                  controller: BlocProvider.of<QuizCubit>(context).userNameCtrl),
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

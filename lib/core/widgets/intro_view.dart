import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/core/widgets/name_text_feild.dart';
import 'package:quizygo/core/widgets/start_ask_button.dart';
import 'package:quizygo/core/widgets/tips.dart';

class IntroView extends StatelessWidget {
  const IntroView(
      {super.key,
      required this.formKey,
      required this.title,
      required this.subTitle,
      required this.onPressed});
  final GlobalKey<FormState> formKey;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;

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
              const SizedBox(height: 32),
              NameTextFeild(
                  controller: BlocProvider.of<AnwserCubit>(context).userName),
              const SizedBox(height: 16),
              StartAskButton(
                onPressed: onPressed,
              ),
              const SizedBox(height: 16),
              const Tips(),
            ],
          ),
        ),
      ),
    );
  }
}

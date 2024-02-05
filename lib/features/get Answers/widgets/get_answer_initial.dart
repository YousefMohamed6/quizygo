import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/get_answers_tips.dart';
import 'package:QuizyGo/core/widgets/name_text_feild.dart';
import 'package:QuizyGo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';
import 'package:QuizyGo/features/get%20Answers/widgets/get_answer_button.dart';
import 'package:QuizyGo/features/get%20Answers/widgets/logo.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAnswerInitial extends StatelessWidget {
  const GetAnswerInitial({super.key});

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
          key: BlocProvider.of<GetAnswersCubit>(context).formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Logo(),
              const SizedBox(height: 32),
              NameTextFeild(
                  hintText: S.of(context).enterid,
                  valdiationText: S.of(context).enterid,
                  controller:
                      BlocProvider.of<GetAnswersCubit>(context).documentCtrl),
              const SizedBox(height: 16),
              const GetAnswerButton(),
              const SizedBox(height: 16),
              const GetAnswerTips(),
            ],
          ),
        ),
      ),
    );
  }
}

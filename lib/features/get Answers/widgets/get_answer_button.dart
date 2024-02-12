import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/widgets/custom_button.dart';
import 'package:QuizyGo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAnswerButton extends StatelessWidget {
  const GetAnswerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        BlocProvider.of<AnswerCubit>(context).documentId =
            Uri.base.queryParameters[kDocumentId]!;
        BlocProvider.of<GetAnswersCubit>(context).getAnswersFromFireBase();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/core/widgets/custom_button.dart';
import 'package:quizygo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';

class GetAnswerButton extends StatelessWidget {
  const GetAnswerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        BlocProvider.of<QuizCubit>(context).documentId =
            GoRouterState.of(context)
                .uri
                .queryParameters[KeysManager.kDocumentId]!;
        BlocProvider.of<GetAnswersCubit>(context).getAnswersFromFireBase();
      },
    );
  }
}

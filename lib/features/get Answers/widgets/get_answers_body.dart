import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';
import 'package:quizygo/features/get%20Answers/widgets/get_answer_initial.dart';
import 'package:quizygo/features/intro_answer/friends/friends_answer.dart';
import 'package:quizygo/features/intro_answer/partner/partner_answer.dart';
import 'package:quizygo/generated/l10n.dart';

class GetAnswersBody extends StatelessWidget {
  const GetAnswersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetAnswersCubit, GetAnswersState>(
      listener: (context, state) {
        if (state is GetAnswersSucsses) {
          BlocProvider.of<QuizCubit>(context).addData(model: state.model);
          context.goNamed(state.model.isFriends
              ? FriendsIntroAnswer.id
              : PartnerIntroAnswer.id);
        } else if (state is GetAnswersFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(S.of(context).correctId),
              showCloseIcon: true,
              duration: const Duration(seconds: 1),
            ),
          );
        }
      },
      child: const GetAnswerInitial(),
    );
  }
}

import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/features/answers/friends/friends_answer.dart';
import 'package:QuizyGo/features/answers/partner/partner_answer.dart';
import 'package:QuizyGo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';
import 'package:QuizyGo/features/get%20Answers/widgets/get_answer_initial.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAnswersBody extends StatelessWidget {
  const GetAnswersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetAnswersCubit, GetAnswersState>(
      listener: (context, state) {
        if (state is GetAnswersSucsses) {
          BlocProvider.of<AnswerCubit>(context).answerName =
              state.model.userName;
          BlocProvider.of<AnswerCubit>(context).isFriends =
              state.model.isFriends;
          BlocProvider.of<AnswerCubit>(context).isArabic = state.model.isArabic;
          BlocProvider.of<AnswerCubit>(context).theAnswers =
              state.model.answers;
          BlocProvider.of<AnswerCubit>(context).restView();
          Navigator.pushNamed(context,
              state.model.isFriends ? FriendsAnswer.id : PartnerAnswer.id);
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

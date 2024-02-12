import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';
import 'package:QuizyGo/features/get%20Answers/widgets/get_answer_initial.dart';
import 'package:QuizyGo/features/intro_answers/friends/friends_answer.dart';
import 'package:QuizyGo/features/intro_answers/partner/partner_answer.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GetAnswersBody extends StatelessWidget {
  const GetAnswersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetAnswersCubit, GetAnswersState>(
      listener: (context, state) {
        if (state is GetAnswersSucsses) {
          BlocProvider.of<AnswerCubit>(context).addData(model: state.model);
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

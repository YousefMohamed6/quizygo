import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/features/Scoreboard/widgets/score_board_table.dart';
import 'package:QuizyGo/features/Scoreboard/widgets/show_score_button.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScoreBoardView extends StatelessWidget {
  const ScoreBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnswerCubit, AnswerState>(
      builder: (context, state) {
        if (state is ShareLink) {
          return const ShowScoreBoardButton();
        } else if (state is Loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetScoreSucsses) {
          return ScoreBoardTable(
            allScores: state.allScores,
            userName: BlocProvider.of<AnswerCubit>(context).answerName,
          );
        } else if (state is Failure) {
          return Center(
            child: Text(
              S.of(context).noScore,
              style: const TextStyle(fontSize: 16),
            ),
          );
        } else {
          return const ShowScoreBoardButton();
        }
      },
    );
  }
}

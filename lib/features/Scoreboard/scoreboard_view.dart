import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/features/Scoreboard/widgets/score_board_table.dart';
import 'package:quizygo/features/Scoreboard/widgets/show_score_button.dart';
import 'package:quizygo/features/share/managment/share_cubit/share_cubit.dart';
import 'package:quizygo/generated/l10n.dart';

class ScoreBoardView extends StatelessWidget {
  const ScoreBoardView({super.key, required this.userName});
  final String userName;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShareCubit, ShareState>(
      builder: (context, state) {
        if (state is GetScoreLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetScoreSucsses) {
          return ScoreBoardTable(
            allScores: state.allScores,
            userName: userName,
          );
        } else if (state is GetScoreFailure) {
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

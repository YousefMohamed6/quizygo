import 'package:QuizyGo/features/Scoreboard/widgets/table_item.dart';
import 'package:QuizyGo/model/friend_model.dart';
import 'package:flutter/material.dart';

class ScoreBoardItems extends StatelessWidget {
  const ScoreBoardItems({super.key, required this.allScores});
  final List<ScoreModel> allScores;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allScores.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: TableItem(
                text: allScores[index].friendName,
              ),
            ),
            TableItem(
              text: "${allScores[index].correctAnswers}/15",
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: allScores[index].correctAnswers < 10 ? 21 : 15),
            )
          ],
        );
      },
    );
  }
}

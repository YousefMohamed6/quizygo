import 'package:flutter/material.dart';
import 'package:quizygo/core/app_models/friend_model.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/features/Scoreboard/widgets/soreboard_items.dart';
import 'package:quizygo/features/Scoreboard/widgets/table_item.dart';
import 'package:quizygo/generated/l10n.dart';

class ScoreBoardTable extends StatelessWidget {
  const ScoreBoardTable(
      {super.key, required this.userName, required this.allScores});
  final String userName;
  final List<ScoreModel> allScores;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${S.of(context).scoreBoardOf}$userName!!",
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.024,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TableItem(
                text: S.of(context).name,
                color: ColorManager.borderSideColor,
              ),
            ),
            TableItem(
              text: S.of(context).score,
              color: ColorManager.borderSideColor,
              padding: const EdgeInsets.symmetric(horizontal: 16.1),
            )
          ],
        ),
        ScoreBoardItems(allScores: allScores),
      ],
    );
  }
}

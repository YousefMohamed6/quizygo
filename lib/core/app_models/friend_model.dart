import 'package:quizygo/core/uitls/app_keys.dart';

class ScoreModel {
  final String friendName;
  final int correctAnswers;

  ScoreModel._({required this.friendName, required this.correctAnswers});

  factory ScoreModel.fromjson(Map<String, dynamic> data) {
    return ScoreModel._(
      friendName: data[KeysManager.kFriendName],
      correctAnswers: data[KeysManager.kCorrectAnswers],
    );
  }
}

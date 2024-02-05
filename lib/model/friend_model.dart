import 'package:QuizyGo/core/constants/keys.dart';

class ScoreModel {
  final String friendName;
  final int correctAnswers;

  ScoreModel._({required this.friendName, required this.correctAnswers});

  factory ScoreModel.fromjson(Map<String, dynamic> data) {
    return ScoreModel._(
      friendName: data[kFriendName],
      correctAnswers: data[kCorrectAnswers],
    );
  }
}

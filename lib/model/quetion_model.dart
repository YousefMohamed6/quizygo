import 'package:QuizyGo/core/constants/keys.dart';

class QuetionModel {
  final bool isArabic;
  final bool isFriends;
  final String userName;
  final List<String> answers;

  QuetionModel._({
    required this.isArabic,
    required this.isFriends,
    required this.userName,
    required this.answers,
  });
  factory QuetionModel.fromFirebase({required Map<String, dynamic> data}) =>
      QuetionModel._(
          isArabic: data[kLanguage],
          isFriends: data[kQuetionType],
          userName: data[kUserName],
          answers: [
            "",
            data["1"],
            data["2"],
            data["3"],
            data["4"],
            data["5"],
            data["6"],
            data["7"],
            data["8"],
            data["9"],
            data["10"],
            data["11"],
            data["12"],
            data["13"],
            data["14"],
            data["15"],
          ]);
}

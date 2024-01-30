import 'package:quizygo/core/constants/keys.dart';

class QuetionModel {
  final bool isArabic;
  final bool isFriends;
  final String userName;
  final String q1;
  final String q2;
  final String q3;
  final String q4;
  final String q5;
  final String q6;
  final String q7;
  final String q8;
  final String q9;
  final String q10;
  final String q11;
  final String q12;
  final String q13;
  final String q14;
  final String q15;

  QuetionModel._(
      {required this.isArabic,
      required this.isFriends,
      required this.userName,
      required this.q1,
      required this.q2,
      required this.q3,
      required this.q4,
      required this.q5,
      required this.q6,
      required this.q7,
      required this.q8,
      required this.q9,
      required this.q10,
      required this.q11,
      required this.q12,
      required this.q13,
      required this.q14,
      required this.q15});
  factory QuetionModel.fromFirebase({required Map<String, dynamic> data}) =>
      QuetionModel._(
        isArabic: data[kLanguage],
        isFriends: data[kQuetionType],
        userName: data[kUserName],
        q1: data["1"],
        q2: data["2"],
        q3: data["3"],
        q4: data["4"],
        q5: data["5"],
        q6: data["6"],
        q7: data["7"],
        q8: data["8"],
        q9: data["9"],
        q10: data["10"],
        q11: data["11"],
        q12: data["12"],
        q13: data["13"],
        q14: data["14"],
        q15: data["15"],
      );
}

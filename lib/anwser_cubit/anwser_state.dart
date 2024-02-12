part of 'anwser_cubit.dart';

@immutable
sealed class AnswerState {}

final class AnswerInitial extends AnswerState {}

final class GetScoreSucsses extends AnswerState {
  final List<ScoreModel> allScores;

  GetScoreSucsses({required this.allScores});
}

final class ChangeLanguage extends AnswerState {}

final class Answer extends AnswerState {
  final String userName;

  Answer({required this.userName});
}

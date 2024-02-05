part of 'anwser_cubit.dart';

@immutable
sealed class AnswerState {}

final class AnswerInitial extends AnswerState {}

final class AnswerChangeColor extends AnswerState {}

final class CorrectAnswer extends AnswerState {
  final Color answerColor;

  CorrectAnswer({required this.answerColor});
}

final class NavigateToNextQuetion extends AnswerState {}

final class GetScoreSucsses extends AnswerState {
  final List<ScoreModel> allScores;

  GetScoreSucsses({required this.allScores});
}

final class ChangeLanguage extends AnswerState {}

final class Loading extends AnswerState {}

final class ShowScoreBoard extends AnswerState {}

final class ShareLink extends AnswerState {}

final class Failure extends AnswerState {}

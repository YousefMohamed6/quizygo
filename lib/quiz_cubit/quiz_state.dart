part of 'quiz_cubit.dart';

@immutable
sealed class QuizState {}

final class QuizInitial extends QuizState {}

final class GetScoreSucsses extends QuizState {
  final List<ScoreModel> allScores;

  GetScoreSucsses({required this.allScores});
}

final class ChangeLanguage extends QuizState {}

final class Answer extends QuizState {
  final String userName;

  Answer({required this.userName});
}

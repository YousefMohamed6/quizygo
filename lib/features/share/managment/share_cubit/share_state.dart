part of 'share_cubit.dart';

@immutable
sealed class ShareState {}

final class ShareInitial extends ShareState {}

final class GetScoreLoading extends ShareState {}

final class GetScoreSucsses extends ShareState {
  final List<ScoreModel> allScores;

  GetScoreSucsses({required this.allScores});
}

final class GetScoreFailure extends ShareState {}

part of 'get_answers_cubit.dart';

@immutable
sealed class GetAnswersState {}

final class GetAnswersInitial extends GetAnswersState {}

final class GetAnswersLoading extends GetAnswersState {}

final class GetAnswersSucsses extends GetAnswersState {
  final QuetionModel model;

  GetAnswersSucsses({required this.model});
}

final class GetAnswersFailure extends GetAnswersState {}

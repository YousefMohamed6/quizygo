part of 'ask_cubit.dart';

@immutable
sealed class AskState {}

final class AskInitial extends AskState {}

final class AskLoading extends AskState {}

final class AskFailure extends AskState {}

final class ShowScore extends AskState {}

final class AddResultFailure extends AskState {}

final class ChangeAnswerColor extends AskState {
  final Color answerColor;

  ChangeAnswerColor({required this.answerColor});
}

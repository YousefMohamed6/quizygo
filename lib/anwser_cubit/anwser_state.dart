part of 'anwser_cubit.dart';

@immutable
sealed class AnswerState {}

final class AnwserInitial extends AnswerState {}

final class AnwserChangeColor extends AnswerState {}

final class NavigateToNextQuetion extends AnswerState {}

final class ChangeLanguage extends AnswerState {
  

  ChangeLanguage();
}

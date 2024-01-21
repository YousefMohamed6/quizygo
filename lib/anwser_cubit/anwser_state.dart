part of 'anwser_cubit.dart';

@immutable
sealed class AnwserState {}

final class AnwserInitial extends AnwserState {}

final class AnwserChangeColor extends AnwserState {}

final class NavigateToNextQuetion extends AnwserState {}

import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/friends.dart';
import 'package:QuizyGo/features/ask/friends/presentation/widgets/numbers_of_quetion.dart';
import 'package:QuizyGo/features/ask/friends/presentation/widgets/quetion_view.dart';
import 'package:QuizyGo/features/share/presentation/share_view.dart';
import 'package:QuizyGo/features/show%20score/show_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FriendsAskBody extends StatelessWidget {
  const FriendsAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AnswerCubit, AnswerState>(
      buildWhen: (previous, current) => current is NavigateToNextQuetion,
      listener: (context, state) {
        if (state is ShareLink) {
          Navigator.pushNamedAndRemoveUntil(
              context, ShareLinkView.id, (route) => false);
        }
        if (state is ShowScoreBoard) {
          Navigator.pushNamedAndRemoveUntil(
              context, ShowScore.id, (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AnswerInitial) {
          return const FriendsAskInitial();
        } else if (state is NavigateToNextQuetion) {
          return const FriendsAskInitial();
        } else if (state is AnswerChangeColor) {
          return const FriendsAskInitial();
        } else if (state is Failure) {
          return const Center(
            child: Text(
              "Some Thing Wrong",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        } else {
          return const FriendsAskInitial();
        }
      },
    );
  }
}

class FriendsAskInitial extends StatelessWidget {
  const FriendsAskInitial({super.key});

  @override
  Widget build(BuildContext context) {
    bool isArabic = BlocProvider.of<AnswerCubit>(context).isArabic;
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        const NumbersOfQuetion(),
        const Expanded(child: SizedBox()),
        QuetionsView(
            quetionAndChoices: isArabic
                ? Friends.quetionAndAnswersAr
                : Friends.quetionsAndAnswersEn,
            quetionImage: Friends.images),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}

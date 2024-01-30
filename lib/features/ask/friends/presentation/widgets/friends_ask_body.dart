import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/constants/friends.dart';
import 'package:quizygo/features/ask/friends/presentation/widgets/numbers_of_quetion.dart';
import 'package:quizygo/features/ask/friends/presentation/widgets/quetion_view.dart';
import 'package:quizygo/features/share/presentation/share_view.dart';

class FriendsAskBody extends StatelessWidget {
  const FriendsAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AnswerCubit, AnswerState>(
      listener: (context, state) {
        if (state is Success) {
          Navigator.popAndPushNamed(context, ShareLinkView.id);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            const Expanded(child: SizedBox()),
            const NumbersOfQuetion(),
            const Expanded(child: SizedBox()),
            QuetionsView(
                quetionAndChoices:
                    BlocProvider.of<AnswerCubit>(context).isArabic
                        ? Friends.quetionAndAnswersAr
                        : Friends.quetionAndAnswersEn,
                quetionImage: Friends.images),
            const Expanded(child: SizedBox()),
          ],
        );
      },
    );
  }
}

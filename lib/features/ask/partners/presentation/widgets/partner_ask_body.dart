import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/partner.dart';
import 'package:QuizyGo/features/ask/friends/presentation/widgets/numbers_of_quetion.dart';
import 'package:QuizyGo/features/ask/friends/presentation/widgets/quetion_view.dart';
import 'package:QuizyGo/features/share/presentation/share_view.dart';
import 'package:QuizyGo/features/show%20score/show_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PartnerAskBody extends StatelessWidget {
  const PartnerAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AnswerCubit, AnswerState>(
      listener: (context, state) {
        if (state is ShareLink) {
          context.pushNamed(
            ShareLinkView.id,
          );
        }
        if (state is ShowScoreBoard) {
          context.goNamed(
            ShowScore.id,
          );
        }
      },
      builder: (context, state) {
        if (state is AnswerInitial) {
          return const PartnerAskInitial();
        } else if (state is NavigateToNextQuetion) {
          return const PartnerAskInitial();
        } else if (state is AnswerChangeColor) {
          return const PartnerAskInitial();
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
          return const PartnerAskInitial();
        }
      },
    );
  }
}

class PartnerAskInitial extends StatelessWidget {
  const PartnerAskInitial({super.key});

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
              ? Partner.quetionsAndAnswersAr
              : Partner.quetionsAndAnswersEn,
          quetionImage: Partner.images,
        ),
        const Expanded(child: SizedBox())
      ],
    );
  }
}

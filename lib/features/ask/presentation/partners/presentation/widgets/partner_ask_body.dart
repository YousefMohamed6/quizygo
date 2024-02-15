import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:QuizyGo/features/ask/presentation/partners/presentation/widgets/partner_initial_view.dart';
import 'package:QuizyGo/features/share/presentation/share_view.dart';
import 'package:QuizyGo/features/show%20score/show_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PartnerAskBody extends StatelessWidget {
  const PartnerAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AskCubit, AskState>(
      listener: (context, state) {
        if (state is ShowScore) {
          int correctAnswers =
              BlocProvider.of<AskCubit>(context).correctAnswers;
          String userName =
              BlocProvider.of<AnswerCubit>(context).userNameCtrl.text;
          context.goNamed(ShowScoreView.id, queryParameters: {
            kCorrectAnswers: correctAnswers.toString(),
            kUserName: userName
          });
        }
        if (state is ShareLink) {
          context.goNamed(ShareLinkView.id, queryParameters: {
            kUserName: state.userName,
            kQuetionType: state.isFriends,
            kDocumentId: state.documentId
          });
        }
      },
      builder: (context, state) {
        return const PartnerInitialBody();
      },
    );
  }
}

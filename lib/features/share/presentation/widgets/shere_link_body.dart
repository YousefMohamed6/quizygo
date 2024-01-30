import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/features/share/presentation/widgets/share_contanier_view.dart';

class ShareLinkViewBody extends StatelessWidget {
  const ShareLinkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String documentId = BlocProvider.of<AnswerCubit>(context).documentId;
    String userName = BlocProvider.of<AnswerCubit>(context).myAnswers["Name"]!;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorManager.borderSideColor,
          ),
        ),
        child: ShareContainerView(
          userName: userName,
          quizLink: "https://www.QuizyGo.com/$documentId",
        ),
      ),
    );
  }
}

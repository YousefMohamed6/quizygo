import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:quizygo/core/app_managment/quiz_cubit.dart";
import "package:quizygo/core/widgets/image_and_answer.dart";
import "package:quizygo/features/ask/managment/cubit/ask_cubit.dart";

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.imagePath,
    required this.answer,
    this.onPressedColor,
  });
  final String imagePath;
  final String answer;
  final Color? onPressedColor;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizCubit, QuizState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            onAnswerPressed(context, state);
          },
          child: ImageAndAnswer(
            answer: answer,
            imagePath: imagePath,
          ),
        );
      },
    );
  }

  void onAnswerPressed(BuildContext context, QuizState state) async {
    var documentData = BlocProvider.of<QuizCubit>(context).documentData;
    var answers = BlocProvider.of<QuizCubit>(context).answers;
    var documentId = BlocProvider.of<QuizCubit>(context).documentId;
    var userName = BlocProvider.of<QuizCubit>(context).userNameCtrl.text;
    var isFriends = BlocProvider.of<QuizCubit>(context).isFriends;
    var isArabic = BlocProvider.of<QuizCubit>(context).isArabic;
    state is Answer
        ? BlocProvider.of<AskCubit>(context).checkCorrectAnswer(
            currentAnswer: answer,
            answers: answers,
            userName: userName,
            documentId: documentId,
            isFriends: isFriends,
            isArabic: isArabic,
          )
        : await BlocProvider.of<AskCubit>(context).createAnswer(
            currentAnswer: answer,
            documentData: documentData,
            isFriends: isFriends,
            isArabic: isArabic,
          );
  }
}

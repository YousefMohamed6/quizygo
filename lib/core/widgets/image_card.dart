import "package:QuizyGo/anwser_cubit/anwser_cubit.dart";
import "package:QuizyGo/core/widgets/image_and_answer.dart";
import "package:QuizyGo/features/ask/managment/cubit/ask_cubit.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

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
    return BlocBuilder<AnswerCubit, AnswerState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            var documentData =
                BlocProvider.of<AnswerCubit>(context).documentData;
            var answers = BlocProvider.of<AnswerCubit>(context).answers;
            var documentId = BlocProvider.of<AnswerCubit>(context).documentId;
            var userName =
                BlocProvider.of<AnswerCubit>(context).userNameCtrl.text;
            state is Answer
                ? BlocProvider.of<AskCubit>(context).checkCorrectAnswer(
                    currentAnswer: answer,
                    answers: answers,
                    userName: userName,
                    documentId: documentId,
                  )
                : BlocProvider.of<AskCubit>(context).createAnswer(
                    currentAnswer: answer,
                    documentData: documentData,
                  );
          },
          child: ImageAndAnswer(
            answer: answer,
            imagePath: imagePath,
          ),
        );
      },
    );
  }
}

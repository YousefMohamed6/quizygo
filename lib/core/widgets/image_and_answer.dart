import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/answer_view.dart';
import 'package:QuizyGo/core/widgets/image_view.dart';
import 'package:QuizyGo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageAndAnswer extends StatelessWidget {
  const ImageAndAnswer({
    super.key,
    required this.imagePath,
    required this.answer,
  });
  final String imagePath;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AskCubit, AskState>(
      builder: (context, state) {
        var answerColor = state is ChangeAnswerColor ? state.answerColor : null;
        var currentAnswer = BlocProvider.of<AskCubit>(context).currentAnswer;
        bool isChose = answer == currentAnswer;
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isChose ? answerColor : null,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: ColorManager.borderSideColor,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              ImageView(imagePath: imagePath),
              const SizedBox(height: 8),
              AnswerView(answer: answer)
            ],
          ),
        );
      },
    );
  }
}

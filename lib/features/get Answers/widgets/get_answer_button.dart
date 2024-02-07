import 'package:QuizyGo/core/widgets/custom_button.dart';
import 'package:QuizyGo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAnswerButton extends StatelessWidget {
  const GetAnswerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () async {
        String documentId = Uri.base.queryParameters['id'] ?? "";
        debugPrint(documentId);
        await BlocProvider.of<GetAnswersCubit>(context)
            .getAnswersFromFireBase(documentId: documentId);
      },
    );
  }
}

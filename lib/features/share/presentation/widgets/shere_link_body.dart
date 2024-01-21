import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';

class ShareLinkViewBody extends StatelessWidget {
  const ShareLinkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 16,
      itemBuilder: (context, index) => Text(
          BlocProvider.of<AnwserCubit>(context)
              .answersFromFirebase[index.toString()]!),
    );
  }
}

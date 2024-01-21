import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/widgets/intro_view.dart';
import 'package:quizygo/features/ask/partners/presentation/partner_ask_view.dart';

class PartnerIntroBody extends StatelessWidget {
  const PartnerIntroBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntroView(
      formKey: BlocProvider.of<AnwserCubit>(context).formKey,
      title: "😍 Test Your Partnership 😉",
      subTitle: "Do your Partner actually know you?",
      onPressed: () {
        var formKey = BlocProvider.of<AnwserCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnwserCubit>(context).addUserNameToMyAnswers();
          Navigator.pushNamed(context, PartnerAskView.id);
        }
      },
    );
  }
}

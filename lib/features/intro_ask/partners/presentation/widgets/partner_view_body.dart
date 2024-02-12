import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/presentation/partners/presentation/partner_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PartnerIntroBody extends StatelessWidget {
  const PartnerIntroBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntroView(
      formKey: BlocProvider.of<AnswerCubit>(context).formKey,
      title: S.of(context).testPartnerIntro,
      subTitle: S.of(context).subTitlePartenerIntro,
      onPressed: () async {
        var formKey = BlocProvider.of<AnswerCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnswerCubit>(context).addUserName();
          BlocProvider.of<AnswerCubit>(context).addLanguageType();
          BlocProvider.of<AnswerCubit>(context)
              .addQuetionType(isFriends: false);
          await context.pushNamed(PartnerAskView.id);
        }
      },
    );
  }
}

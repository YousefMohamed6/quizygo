import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/presentation/partners/presentation/partner_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
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
      formKey: BlocProvider.of<QuizCubit>(context).formKey,
      title: S.of(context).testPartnerIntro,
      subTitle: S.of(context).subTitlePartenerIntro,
      onPressed: () async {
        var formKey = BlocProvider.of<QuizCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<QuizCubit>(context).addUserName();
          BlocProvider.of<QuizCubit>(context).addLanguageType();
          BlocProvider.of<QuizCubit>(context).addQuetionType(isFriends: false);
          context.goNamed(PartnerAskView.id);
        }
      },
    );
  }
}

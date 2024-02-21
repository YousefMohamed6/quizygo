import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/uitls/app_assets.dart';
import 'package:quizygo/features/home/presentation/widgets/custom_image.dart';
import 'package:quizygo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:quizygo/features/intro_ask/partners/presentation/partner_view.dart';
import 'package:quizygo/generated/l10n.dart';

class PartnerView extends StatelessWidget {
  const PartnerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitleAndSubTitle(
          title: S.of(context).testPartner,
          subtitle: S.of(context).subTitlePartener,
        ),
        CustomImage(
          path: AssetsManager.partnerLogo,
          onPressed: () {
            BlocProvider.of<QuizCubit>(context).restView();
            BlocProvider.of<QuizCubit>(context)
                .addQuetionType(isFriends: false);
            context.goNamed(PartnerIntroAsk.id);
          },
        ),
      ],
    );
  }
}

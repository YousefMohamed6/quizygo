import 'package:QuizyGo/core/uitls/app_assets.dart';
import 'package:QuizyGo/features/home/presentation/widgets/custom_image.dart';
import 'package:QuizyGo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:QuizyGo/features/intro_ask/partners/presentation/partner_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
          onPressed: () async {
            BlocProvider.of<QuizCubit>(context).restView();
            BlocProvider.of<QuizCubit>(context)
                .addQuetionType(isFriends: false);
            context.goNamed(PartnerIntroView.id);
          },
        ),
      ],
    );
  }
}

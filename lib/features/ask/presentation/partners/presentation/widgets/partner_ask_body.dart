import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/uitls/handel_ask_state.dart';
import 'package:quizygo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:quizygo/features/ask/presentation/partners/presentation/widgets/partner_initial_view.dart';

class PartnerAskBody extends StatelessWidget {
  const PartnerAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AskCubit, AskState>(
      listener: (context, state) {
        if (state is ShowScore) {
          HandleAskState.navigateToScoreView(context);
        }
        if (state is ShareLink) {
          HandleAskState.navigateToShareLinkView(context, state);
        }
      },
      builder: (context, state) {
        return const PartnerInitialBody();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:quizygo/features/share/presentation/share_view.dart';
import 'package:quizygo/features/show%20score/show_score.dart';

abstract class HandleAskState {
  static void navigateToShareLinkView(BuildContext context, ShareLink state) {
    context.goNamed(ShareLinkView.id, queryParameters: {
      KeysManager.kUserName: state.userName,
      KeysManager.kQuetionType: state.isFriends,
      KeysManager.kDocumentId: state.documentId
    });
  }

  static void navigateToScoreView(BuildContext context) {
    int correctAnswers = BlocProvider.of<AskCubit>(context).correctAnswers;
    String userName = BlocProvider.of<QuizCubit>(context).userNameCtrl.text;
    context.goNamed(ShowScoreView.id, queryParameters: {
      KeysManager.kCorrectAnswers: correctAnswers.toString(),
      KeysManager.kUserName: userName,
    });
  }
}

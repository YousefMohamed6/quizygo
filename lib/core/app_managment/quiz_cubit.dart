import 'package:quizygo/core/app_models/friend_model.dart';
import 'package:quizygo/core/app_models/quetion_model.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'quiz_state.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(QuizInitial());
  TextEditingController userNameCtrl = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isArabic = false;
  bool isFriends = true;
  Map<String, dynamic> documentData = {};
  List<String> answers = [];
  String answerName = "";
  String documentId = "";
  String checkLevel(
      {required String correctAnswer, required BuildContext context}) {
    if (int.parse(correctAnswer) < 8) {
      return S.of(context).low;
    }
    if (int.parse(correctAnswer) < 10) {
      return S.of(context).medium;
    } else {
      return S.of(context).high;
    }
  }

  void changeLanguage({required bool isArabic}) {
    this.isArabic = isArabic;
    emit(ChangeLanguage());
  }

  void addQuetionType({required bool isFriends}) {
    this.isFriends = isFriends;
    documentData.addAll({KeysManager.kQuetionType: this.isFriends});
  }

  void addUserName() {
    //add User Name
    documentData.addAll({KeysManager.kUserName: userNameCtrl.text});
  }

  void restView() {
    userNameCtrl.clear();
    documentData.clear();
    emit(QuizInitial());
  }

  void answerQuiz({required String userName}) {
    emit(Answer(userName: userName));
  }

  void addData({required QuetionModel model}) {
    isFriends = model.isFriends;
    answers = model.answers;
    answerName = model.userName;
  }
}

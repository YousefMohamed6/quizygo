import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/model/friend_model.dart';
import 'package:QuizyGo/model/quetion_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'anwser_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit() : super(AnswerInitial());
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
    documentData.addAll({kQuetionType: this.isFriends});
  }

  void addUserName() {
    //add User Name
    documentData.addAll({kUserName: userNameCtrl.text});
  }

  void addLanguageType() {
    //add language type
    documentData.addAll({kLanguage: isArabic});
  }

  void restView() {
    userNameCtrl.clear();
    documentData.clear();
    emit(AnswerInitial());
  }

  void answerQuiz({required String userName}) {
    emit(Answer(userName: userName));
  }

  void addData({required QuetionModel model}) {
    isArabic = model.isArabic;
    isFriends = model.isFriends;
    answers = model.answers;
    answerName = model.userName;
  }
}

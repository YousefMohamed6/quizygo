import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/url_launcher.dart';
import 'package:QuizyGo/features/share/presentation/share_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ask_state.dart';

class AskCubit extends Cubit<AskState> {
  AskCubit() : super(AskInitial());
  String currentAnswer = "";
  String answerName = "";
  Map<String, dynamic> myAnswers = {};
  int correctAnswers = 0;
  Set<int> numbersOfAnsweredQuestions = {};
  int numberOfQuetion = 1;
  bool checkQuetionIsAwnser({required int numberOfQuetion}) {
    if (numbersOfAnsweredQuestions.contains(numberOfQuetion)) {
      return true;
    } else {
      return false;
    }
  }

  void changeColorOfTheChoise({required Color answerColor}) {
    emit(ChangeAnswerColor(answerColor: answerColor));
  }

  void navigateToNextQuetion() {
    if (numberOfQuetion <= 15) {
      emit(AskInitial());
    }
  }

  void addAnwserToMyAnswers() {
    myAnswers.addAll({numberOfQuetion.toString(): currentAnswer});
  }

  void addQuetionNumber() {
    numbersOfAnsweredQuestions.add(numberOfQuetion);
  }

  void increseAndAddQuetionNumber() {
    numbersOfAnsweredQuestions.add(numberOfQuetion);
  }

  Future<void> createAnswer(
      {required String currentAnswer,
      required Map<String, dynamic> documentData}) async {
    this.currentAnswer = currentAnswer;
    changeColorOfTheChoise(answerColor: ColorManager.borderSideColor);
    await Future.delayed(const Duration(seconds: 1));
    if (numberOfQuetion < 15) {
      addAnwserToMyAnswers();
      addQuetionNumber();
      numberOfQuetion++;
      navigateToNextQuetion();
    } else {
      await addAnswersToFireBase(documentData: documentData);
    }
  }

  Future<void> addAnswersToFireBase(
      {required Map<String, dynamic> documentData}) async {
    //add last quetion number 15
    myAnswers.addAll({numberOfQuetion.toString(): currentAnswer});
    //add data to myAnswers
    myAnswers.addAll(documentData);
    CollectionReference answersRef =
        FirebaseFirestore.instance.collection(kCollection);
    try {
      await answersRef.add(myAnswers).then(
        (value) async {
          String userName = documentData[kUserName];
          await urlLauncher(
            url:
                "$kBaseUrl${ShareLinkView.id}?$kDocumentId=${value.id}&$kUserName=$userName",
          );
        },
      );
    } on Exception catch (_) {
      emit(AskFailure());
    }
  }

  Future<void> checkCorrectAnswer({
    required String currentAnswer,
    required List<String> answers,
    required String documentId,
    required String userName,
  }) async {
    if (numberOfQuetion <= 15) {
      this.currentAnswer = currentAnswer;
      if (answers[numberOfQuetion] == currentAnswer) {
        await handleCorrectAnswer();
      } else {
        await handleWrongAnswer();
      }
      if (numberOfQuetion == 16) {
        await addResultToFireBase(documentId: documentId, userName: userName);
      }
    }
  }

  Future<void> handleCorrectAnswer() async {
    correctAnswers++;
    changeColorOfTheChoise(answerColor: Colors.green);
    await Future.delayed(const Duration(seconds: 1));
    addQuetionNumber();
    numberOfQuetion++;
    navigateToNextQuetion();
  }

  Future<void> handleWrongAnswer() async {
    changeColorOfTheChoise(answerColor: Colors.red);
    await Future.delayed(const Duration(seconds: 1));
    addQuetionNumber();
    numberOfQuetion++;
    navigateToNextQuetion();
  }

  Future<void> addResultToFireBase(
      {required String documentId, required String userName}) async {
    CollectionReference myAnswers =
        FirebaseFirestore.instance.collection(kCollection);
    try {
      await myAnswers.doc(documentId).collection(kScoreBoard).add({
        kFriendName: userName,
        kCorrectAnswers: correctAnswers,
      });
      emit(ShowScore());
    } catch (_) {
      emit(AddResultFailure());
    }
  }
}

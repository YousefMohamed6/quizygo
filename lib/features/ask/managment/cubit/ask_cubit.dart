import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/app_data/friends_data.dart';
import 'package:quizygo/core/app_data/partner_data.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/uitls/app_keys.dart';

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

  int getIndexofAnswer({
    required bool isFriends,
    required bool isArabic,
    required String currentAnswer,
  }) {
    List<String> data = [];
    if (isFriends) {
      data = FriendsData.quetionsAndAnswersAr[numberOfQuetion.toString()]!;
    } else {
      data = PartnerData.quetionsAndAnswersAr[numberOfQuetion.toString()]!;
    }
    int answerIndex = 0;
    if (isArabic && isFriends) {
      answerIndex = data.indexOf(currentAnswer);
      return answerIndex;
    } else if (isArabic && !isFriends) {
      answerIndex = data.indexOf(currentAnswer);
      return answerIndex;
    }
    return -1;
  }

  void addAnwserToMyAnswers({
    required bool isFriends,
    required bool isArabic,
    required String currentAnswer,
  }) {
    int answerIndex = getIndexofAnswer(
      isFriends: isFriends,
      isArabic: isArabic,
      currentAnswer: currentAnswer,
    );
    if (isArabic && isFriends) {
      String answer = FriendsData
          .quetionsAndAnswersEn[numberOfQuetion.toString()]![answerIndex];
      myAnswers.addAll({numberOfQuetion.toString(): answer});
    } else if (isArabic && !isFriends) {
      String answer = PartnerData
          .quetionsAndAnswersEn[numberOfQuetion.toString()]![answerIndex];
      myAnswers.addAll({numberOfQuetion.toString(): answer});
    } else {
      myAnswers.addAll({numberOfQuetion.toString(): currentAnswer});
    }
  }

  void addQuetionNumber() {
    numbersOfAnsweredQuestions.add(numberOfQuetion);
  }

  Future<void> createAnswer({
    required String currentAnswer,
    required Map<String, dynamic> documentData,
    required bool isFriends,
    required bool isArabic,
  }) async {
    this.currentAnswer = currentAnswer;
    changeColorOfTheChoise(answerColor: ColorManager.borderSideColor);
    await Future.delayed(const Duration(seconds: 1));
    if (numberOfQuetion < 15) {
      addAnwserToMyAnswers(
          isArabic: isArabic,
          isFriends: isFriends,
          currentAnswer: currentAnswer);
      addQuetionNumber();
      numberOfQuetion++;
      navigateToNextQuetion();
    } else {
      documentData.addAll({KeysManager.kLanguage: isArabic});
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
        FirebaseFirestore.instance.collection(KeysManager.kCollection);
    try {
      await answersRef.add(myAnswers).then(
        (value) async {
          String userName = documentData[KeysManager.kUserName];
          String documentId = value.id;
          String isFriends = documentData[KeysManager.kQuetionType].toString();
          emit(
            ShareLink(
              documentId: documentId,
              isFriends: isFriends,
              userName: userName,
            ),
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
    required bool isFriends,
    required bool isArabic,
  }) async {
    if (numberOfQuetion <= 15) {
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
        FirebaseFirestore.instance.collection(KeysManager.kCollection);
    try {
      await myAnswers.doc(documentId).collection(KeysManager.kScoreBoard).add({
        KeysManager.kFriendName: userName,
        KeysManager.kCorrectAnswers: correctAnswers,
      });
      emit(ShowScore());
    } catch (_) {
      emit(AddResultFailure());
    }
  }
}

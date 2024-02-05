import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/model/friend_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'anwser_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit() : super(AnswerInitial());
  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController documentIdCtrl = TextEditingController();

  final formKey = GlobalKey<FormState>();
  int numberOfQuetion = 1;
  bool isArabic = false;
  bool isFriends = false;
  String currentAnswer = "";
  String answerName = "";
  Map<String, dynamic> myAnswers = {};
  int correctAnswer = 0;
  String documentId = "";
  List<String> theAnswers = [];
  Set<int> numbersOfQuetionIsAnwser = {};
  String checkLevel(
      {required int correctAnswer, required BuildContext context}) {
    if (correctAnswer < 8) {
      return S.of(context).low;
    }
    if (correctAnswer < 10) {
      return S.of(context).medium;
    } else {
      return S.of(context).high;
    }
  }

  Future<SharedPreferences> getPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  Future<void> setUserName({required String userName}) async {
    var prefs = await getPrefs();
    await prefs.setString(kUserName, userName);
  }

  Future<void> getUserName() async {
    var prefs = await getPrefs();
    answerName = prefs.getString(kUserName)!;
  }

  Future<void> setDocumentId({required String documentId}) async {
    var prefs = await getPrefs();
    await prefs.setString(kDocumentId, documentId);
  }

  Future<void> getDocumentId() async {
    var prefs = await getPrefs();
    documentId = prefs.getString(kDocumentId)!;
  }

  void changeColorOfTheChoise() {
    emit(AnswerChangeColor());
  }

  void changeLanguage({required bool isArabic}) {
    this.isArabic = isArabic;
    emit(ChangeLanguage());
  }

  void addQuetionType({required bool isFriends}) {
    this.isFriends = isFriends;
    myAnswers.addAll({kQuetionType: this.isFriends});
  }

  void addUserName() {
    //add User Name
    myAnswers.addAll({kUserName: userNameCtrl.text});
  }

  void addLanguageType() {
    //add language type
    myAnswers.addAll({kLanguage: isArabic});
  }

  bool checkQuetionIsAwnser({required int numberOfQuetion}) {
    if (numbersOfQuetionIsAnwser.contains(numberOfQuetion)) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> createAnswer({required String currentAnswer}) async {
    this.currentAnswer = currentAnswer;
    changeColorOfTheChoise();
    if (numberOfQuetion < 15) {
      await Future.delayed(const Duration(seconds: 1));
      addAnwserToMyAnswers();

      addQuetionNumber();
      numberOfQuetion++;
      navigateToNextQuetion();
    } else {
      await addAnswersToFireBase();
    }
  }

  Future<void> addAnswersToFireBase() async {
    //add last quetion number 15
    myAnswers.addAll({numberOfQuetion.toString(): currentAnswer});
    CollectionReference answersRef =
        FirebaseFirestore.instance.collection(kCollection);
    emit(Loading());
    try {
      await answersRef.add(myAnswers).then((value) async {
        await setUserName(userName: userNameCtrl.text);
        await setDocumentId(documentId: value.id);
        await getDocumentId();
      });
      emit(ShareLink());
    } on Exception catch (_) {
      emit(Failure());
    }
  }

  void restView() {
    numberOfQuetion = 1;
    numbersOfQuetionIsAnwser.clear();
    userNameCtrl.clear();
    myAnswers.clear();
    correctAnswer = 0;
    emit(AnswerInitial());
  }

  void navigateToNextQuetion() {
    if (numberOfQuetion <= 15) {
      emit(NavigateToNextQuetion());
    }
  }

  void addAnwserToMyAnswers() {
    myAnswers.addAll({numberOfQuetion.toString(): currentAnswer});
  }

  void addQuetionNumber() {
    numbersOfQuetionIsAnwser.add(numberOfQuetion);
  }

  void increseAndAddQuetionNumber() {
    numbersOfQuetionIsAnwser.add(numberOfQuetion);
  }

  Future<void> checkCorrectAnswer({required String currentAnswer}) async {
    if (numberOfQuetion <= 15) {
      this.currentAnswer = currentAnswer;
      if (theAnswers[numberOfQuetion] == currentAnswer) {
        await handleCorrectAnswer();
      } else {
        await handleWrongAnswer();
      }
      await addResultToScoreBoard();
    }
  }

  Future<void> handleCorrectAnswer() async {
    correctAnswer++;
    emit(CorrectAnswer(answerColor: Colors.green));
    await Future.delayed(const Duration(seconds: 1));
    addQuetionNumber();
    numberOfQuetion++;
    navigateToNextQuetion();
  }

  Future<void> handleWrongAnswer() async {
    emit(CorrectAnswer(answerColor: Colors.red));
    await Future.delayed(const Duration(seconds: 1));
    addQuetionNumber();
    numberOfQuetion++;
    navigateToNextQuetion();
  }

  Future<void> addResultToScoreBoard() async {
    if (numberOfQuetion == 16) {
      CollectionReference myAnswers =
          FirebaseFirestore.instance.collection(kCollection);
      try {
        var prefs = await getPrefs();
        await myAnswers
            .doc(prefs.getString(kDocumentId))
            .collection(kScoreBoard)
            .add({
          kFriendName: userNameCtrl.text,
          kCorrectAnswers: correctAnswer,
        });
        emit(ShowScoreBoard());
      } catch (_) {
        emit(Failure());
      }
    }
  }

  Future<void> getScores() async {
    emit(Loading());
    CollectionReference myAnswers =
        FirebaseFirestore.instance.collection(kCollection);
    List<ScoreModel> allScores = [];
    
    try {
      await getUserName();
      var prefs = await getPrefs();
      var collectionScore = await myAnswers
          .doc(prefs.getString(kDocumentId))
          .collection(kScoreBoard)
          .get();
      for (var element in collectionScore.docs) {
        allScores.add(ScoreModel.fromjson(element.data()));
      }
      emit(GetScoreSucsses(allScores: allScores));
    } catch (e) {
      emit(Failure());
    }
  }
}

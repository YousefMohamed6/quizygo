import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/constants/keys.dart';
import 'package:quizygo/model/quetion_model.dart';

part 'anwser_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit() : super(AnwserInitial());
  TextEditingController userName = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int numberOfQuetion = 1;
  bool isArabic = false;
  bool isFriends = false;
  String documentId = "";
  String answer = "";

  Map<String, dynamic> myAnswers = {};

  Set<int> numbersOfQuetionIsAnwser = {1};

  void changeColorOfTheChoise() {
    emit(AnwserChangeColor());
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
    myAnswers.addAll({kUserName: userName.text});
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

  Future<void> checkAnswerState(BuildContext context) async {
    if (numberOfQuetion < 15) {
      await Future.delayed(const Duration(seconds: 1));
      addAnwserToMyAnswers();
      increseAndAddQuetionNumber();
      emit(NavigateToNextQuetion());
    } else {
      await addAnswersToFireBase(myAnswers);
    }
  }

  void addAnwserToMyAnswers() async {
    myAnswers.addAll({numberOfQuetion.toString(): answer});
  }

  void increseAndAddQuetionNumber() {
    numberOfQuetion++;
    numbersOfQuetionIsAnwser.add(numberOfQuetion);
  }

  Future<void> addAnswersToFireBase(Map<String, dynamic> answers) async {
    //this line because index 16 have no data
    //add last qurtion number 15
    answers.addAll({numberOfQuetion.toString(): answer});
    CollectionReference myAnswers =
        FirebaseFirestore.instance.collection(kCollection);
    emit(Loading());
    try  {
      documentId = await myAnswers.add(answers).then((value) => value.id);
      emit(Success());
    } on Exception catch (_) {
      emit(Failure());
    }
  }

  Future<void> getAnswersFromFireBase({required String documentId}) async {
    CollectionReference myAnswers =
        FirebaseFirestore.instance.collection(kCollection);
    emit(Loading());
    try {
      DocumentSnapshot<Object?> yourAnswer =
          await myAnswers.doc(documentId).get();
      Map<String, dynamic> data = yourAnswer.data() as Map<String, dynamic>;
      QuetionModel theAnswer = QuetionModel.fromFirebase(data: data);
    } on Exception catch (_) {
      emit(Failure());
    }
  }
}

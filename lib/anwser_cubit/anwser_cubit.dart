import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'anwser_state.dart';

class AnwserCubit extends Cubit<AnwserState> {
  AnwserCubit() : super(AnwserInitial());
  int numberOfQuetion = 1;
  String documentId = "";
  String answer = "";
  Map<String, String> answersFromFirebase = {};
  var userName = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Map<String, String> myAnswers = {};
  void changeColorOfTheChoise() {
    emit(AnwserChangeColor());
  }

  void addUserNameToMyAnswers() {
    myAnswers.addAll({"Name": userName.text});
  }

  Set<int> numbersOfQuetionIsAnwser = {1};

  bool checkQuetionIsAwnser({required int numberOfQuetion}) {
    if (numbersOfQuetionIsAnwser.contains(numberOfQuetion)) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> checkAnswerState() async {
    if (numberOfQuetion < 15) {
      await Future.delayed(const Duration(seconds: 1));
      addAnwserToMyAnswers();
      increseAndAddQuetionNumber();
      emit(NavigateToNextQuetion());
    } else {
      await addAnwsersToFireBase(myAnswers);
    }
  }

  void addAnwserToMyAnswers() async {
    myAnswers.addAll({numberOfQuetion.toString(): answer});
  }

  void increseAndAddQuetionNumber() {
    numberOfQuetion++;
    numbersOfQuetionIsAnwser.add(numberOfQuetion);
  }

  Future<void> addAnwsersToFireBase(Map<String, String> answers) async {
    //this line because index 16 have no data
    answers.addAll({numberOfQuetion.toString(): answer});
    CollectionReference myAnswers =
        FirebaseFirestore.instance.collection('Answers');
    documentId = await myAnswers.add(answers).then((value) => value.id);
  }

  Future<Map<String, String>> getAnwsersFromFireBase(
      {required String documentId}) async {
    CollectionReference myAnswers =
        FirebaseFirestore.instance.collection('Answers');
    DocumentSnapshot<Object?> yourAnswer =
        await myAnswers.doc(documentId).get();
    Map<String, String> data = yourAnswer.data() as Map<String, String>;
    return data;
  }
}

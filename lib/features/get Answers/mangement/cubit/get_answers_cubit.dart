import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/model/quetion_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_answers_state.dart';

class GetAnswersCubit extends Cubit<GetAnswersState> {
  GetAnswersCubit() : super(GetAnswersInitial());
  final TextEditingController documentCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> getAnswersFromFireBase() async {
    emit(GetAnswersLoading());
    try {
      CollectionReference myAnswers =
          FirebaseFirestore.instance.collection(kCollection);
      DocumentSnapshot<Object?> yourAnswer =
          await myAnswers.doc(documentCtrl.text).get();
      Map<String, dynamic> data = yourAnswer.data() as Map<String, dynamic>;
      QuetionModel quetionModel = QuetionModel.fromFirebase(data: data);
      emit(GetAnswersSucsses(model: quetionModel));
    } catch (_) {
      emit(GetAnswersFailure());
    }
  }
}
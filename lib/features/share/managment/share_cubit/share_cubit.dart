import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quizygo/core/app_models/friend_model.dart';
import 'package:quizygo/core/uitls/app_keys.dart';

part 'share_state.dart';

class ShareCubit extends Cubit<ShareState> {
  ShareCubit() : super(ShareInitial());
  Future<void> getScores({required String documentId}) async {
    emit(GetScoreLoading());
    CollectionReference myAnswers =
        FirebaseFirestore.instance.collection(KeysManager.kCollection);
    List<ScoreModel> allScores = [];
    try {
      var collectionScore = await myAnswers
          .doc(documentId)
          .collection(KeysManager.kScoreBoard)
          .get();
      for (var element in collectionScore.docs) {
        allScores.add(ScoreModel.fromjson(element.data()));
      }
      emit(GetScoreSucsses(allScores: allScores));
    } catch (e) {
      emit(GetScoreFailure());
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'share_state.dart';

class ShareCubit extends Cubit<ShareState> {
  ShareCubit() : super(ShareInitial());
  // Obtain shared preferences.

// Save an integer value to 'counter' key.
  void addDocumentIdToLocalDataBase(String documentId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
// Save an String value to 'action' key.
    await prefs.setString('action', 'Start');
  }
}

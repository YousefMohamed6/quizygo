import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quizygo/core/my_app.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

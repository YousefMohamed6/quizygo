import 'package:QuizyGo/core/uitls/simple_observer.dart';
import 'package:QuizyGo/my_app.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';

void main() async {
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    BlocProvider(
      create: (context) => QuizCubit(),
      child: MyApp(),
    ),
  );
  Bloc.observer = SimpleBlocObServer();
}

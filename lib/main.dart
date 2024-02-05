import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/my_app.dart';
import 'package:QuizyGo/simple_observer.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';

void main() async {
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    BlocProvider(
      create: (context) => AnswerCubit(),
      child: MyApp(),
    ),
  );
  Bloc.observer = SimpleBlocObServer();
}

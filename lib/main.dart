import 'package:flutter/material.dart';
import 'package:quizygo/features/home/presentation/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp._();
  static const instance = MyApp._();
  factory MyApp() => instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'َQuizyGo',
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

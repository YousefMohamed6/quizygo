import 'package:flutter/material.dart';
import 'package:quizygo/features/ask/frinds/presentation/frinds_view.dart';

class MyApp extends StatelessWidget {
  const MyApp._();
  static const instance = MyApp._();
  factory MyApp() => instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'َQuizyGo',
      home: const FriendsView(),
      // applies this theme if the device theme is light mode
      theme: ThemeData.light(),
      // applies this theme if the device theme is dark mode
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {FriendsView.id: (context) => const FriendsView()},
    );
  }
}

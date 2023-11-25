import 'package:flutter/material.dart';
import 'package:quizygo/features/ask/frinds/presentation/frinds_view.dart';
import 'package:quizygo/features/ask/partners/presentation/widgets/partner_view.dart';
import 'package:quizygo/features/home/presentation/home_view.dart';
import 'package:quizygo/features/menu/presentation/views/about_us.dart';
import 'package:quizygo/features/menu/presentation/views/contact.dart';
import 'package:quizygo/features/menu/presentation/views/private_policy.dart';

class MyApp extends StatelessWidget {
  const MyApp._();
  static const instance = MyApp._();
  factory MyApp() => instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'َQuizyGo',
      home: const HomeView(),
      initialRoute: HomeView.id,
      // applies this theme if the device theme is light mode
      theme: ThemeData.light(),
      // applies this theme if the device theme is dark mode
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
        FriendsView.id: (context) => const FriendsView(),
        PartnerView.id: (context) => const PartnerView(),
        AboutUs.id: (context) => const AboutUs(),
        Contact.id: (context) => const Contact(),
        PrivatePolicy.id: (context) => const PrivatePolicy(),
      },
    );
  }
}

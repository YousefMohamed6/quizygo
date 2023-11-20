import 'package:flutter/material.dart';
import 'package:quizygo/core/appbar_logo.dart';
import 'package:quizygo/core/widgets/menu_button.dart';

class PartnerView extends StatelessWidget {
  const PartnerView({super.key});
  static const String id = "Partner View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: const AppBarLogo(),
        actions: const [MenuButton()],
        backgroundColor: const Color(0xffFFB97E),
      ),
    );
  }
}

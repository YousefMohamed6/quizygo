import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:QuizyGo/features/ask/presentation/friends/presentation/widgets/friends_ask_body.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FriendsAskView extends StatelessWidget {
  const FriendsAskView({super.key});
  static const String id = "/FriendsAsk";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AskCubit(),
      child: Scaffold(
        appBar: AppBar(
            title: const AppBarLogo(),
            actions: const [MenuButton()],
            backgroundColor: ColorManager.primary),
        body: const FriendsAskBody(),
      ),
    );
  }
}

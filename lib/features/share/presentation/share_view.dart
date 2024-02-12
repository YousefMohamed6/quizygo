import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:QuizyGo/features/share/managment/share_cubit/share_cubit.dart';
import 'package:QuizyGo/features/share/presentation/widgets/shere_link_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareLinkView extends StatelessWidget {
  const ShareLinkView({super.key});
  static const String id = "/ShareLink";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShareCubit(),
      child: Scaffold(
        appBar: AppBar(
            leadingWidth: MediaQuery.sizeOf(context).height * 0.1,
            title: const AppBarLogo(),
            actions: const [MenuButton()],
            backgroundColor: ColorManager.primary),
        body: const ShareLinkViewBody(),
      ),
    );
  }
}

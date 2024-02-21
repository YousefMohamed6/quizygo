import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/features/menu/presentation/menu_button.dart';
import 'package:quizygo/features/share/managment/share_cubit/share_cubit.dart';
import 'package:quizygo/features/share/presentation/widgets/shere_link_body.dart';

class ShareLinkView extends StatelessWidget {
  const ShareLinkView({super.key});
  static const String id = "/Share/Link";
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

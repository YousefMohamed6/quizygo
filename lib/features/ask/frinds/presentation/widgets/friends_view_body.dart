import 'package:flutter/material.dart';
import 'package:quizygo/features/ask/frinds/presentation/widgets/name_text_feild.dart';
import 'package:quizygo/features/ask/frinds/presentation/widgets/start_frinds_button.dart';
import 'package:quizygo/features/ask/frinds/presentation/widgets/tips.dart';

class FriendsViewbody extends StatelessWidget {
  const FriendsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsetsDirectional.all(8),
        height: MediaQuery.sizeOf(context).height * 0.60,
        width: MediaQuery.sizeOf(context).width * 0.60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.withOpacity(0.3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "😍 Test Your Friendship 😉",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Do your friends actually KNOW YOU?",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 32),
            NameTextFeild(controller: TextEditingController()),
            const SizedBox(height: 16),
            const StartFriendsButton(),
            const SizedBox(height: 16),
            const Tips(),
          ],
        ),
      ),
    );
  }
}

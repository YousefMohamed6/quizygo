import 'package:QuizyGo/features/menu/presentation/widgets/social_media_account.dart';
import 'package:flutter/material.dart';

class AboutUsInformation extends StatelessWidget {
  const AboutUsInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Column(
        children: [
          SizedBox(height: 32),
          SocialMediaAccounts(),
          SizedBox(height: 32),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

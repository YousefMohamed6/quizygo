import 'package:flutter/material.dart';
import 'package:quizygo/features/menu/presentation/widgets/email.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          Text(
            "About Us",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.020,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "We, Team Quizy Go are dedicated to providing exceptional quizzes for social bonding between friends and loved ones but all the contents are for fun and entertainment purposes only.",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.016,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "We are thankful to all our users, who supported us and made this a huge success.\nWe welcome to the person who has fantastic new ideas and we would be happier to work with them. You can send us your ideas or suggestions on our email.",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.016,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Anyone from our visitors wants to advertise their product and services on our website, please send us an email. Our email ID is ",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.016,
            ),
          ),
          const EMail(),
          const SizedBox(height: 32),
          const AboutUsInformation(),
        ],
      ),
    );
  }
}

class AboutUsInformation extends StatelessWidget {
  const AboutUsInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Column(children: [
        SizedBox(height: 32),
        Divider(
          thickness: 1,
          color: Colors.black,
        ),
        SizedBox(height: 32),
      ]),
    );
  }
}

class SocialMediaAccounts extends StatelessWidget {
  const SocialMediaAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [],
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}

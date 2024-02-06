import 'package:QuizyGo/features/menu/presentation/widgets/about_us_information.dart';
import 'package:QuizyGo/features/menu/presentation/widgets/email.dart';
import 'package:flutter/material.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: ListView(
        children: [
          const SizedBox(height: 48),
          Text(
            "About Us",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "We, Team Quizy Go are dedicated to providing exceptional quizzes for social bonding between friends and loved ones but all the contents are for fun and entertainment purposes only.",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "We are thankful to all our users, who supported us and made this a huge success.\nWe welcome to the person who has fantastic new ideas and we would be happier to work with them. You can send us your ideas or suggestions on our email.",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Anyone from our visitors wants to advertise their product and services on our website, please send us an email. Our email ID is ",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
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

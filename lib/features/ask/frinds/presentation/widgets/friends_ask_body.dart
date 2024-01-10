import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/core/constants/friends.dart';

class FriendsAskBody extends StatelessWidget {
  const FriendsAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        QuetionText(
          quetionText: "What experience do you want to have?",
        ),
        SizedBox(
          height: 24,
        ),
        DoubleImage(
          fristPath: FriendsAssets.imagesFriendsDiving,
          fristName: "Diving",
          secondPath: FriendsAssets.imagesFriendsSkyDiving,
          secondName: "Sky Diving",
        ),
        SizedBox(
          height: 32,
        ),
        DoubleImage(
          fristPath: FriendsAssets.imagesFriendsCamping,
          fristName: "Camping",
          secondPath: FriendsAssets.imagesFriendsMountaineering,
          secondName: "Mountaineering",
        ),
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.path, required this.answer});
  final String path;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: ColorManager.borderSideColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.25,
            height: MediaQuery.sizeOf(context).height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  path,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            answer,
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.025,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class DoubleImage extends StatelessWidget {
  const DoubleImage(
      {super.key,
      required this.fristPath,
      required this.secondPath,
      required this.fristName,
      required this.secondName});
  final String fristPath;
  final String secondPath;
  final String fristName;
  final String secondName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageCard(path: fristPath, answer: fristName),
        const SizedBox(width: 32),
        ImageCard(path: secondPath, answer: secondName),
      ],
    );
  }
}

class QuetionText extends StatelessWidget {
  const QuetionText({super.key, required this.quetionText});
  final String quetionText;
  @override
  Widget build(BuildContext context) {
    return Text(
      quetionText,
      style: TextStyle(
        fontSize: MediaQuery.sizeOf(context).width * 0.035,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

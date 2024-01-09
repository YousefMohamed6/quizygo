import 'package:flutter/material.dart';
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

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.path, required this.imageName});
  final String path;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.blue,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            path,
            width: MediaQuery.sizeOf(context).width * 0.20,
            height: MediaQuery.sizeOf(context).height * 0.20,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 8),
          Text(
            imageName,
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width * 0.015,
              fontWeight: FontWeight.w300,
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
        CustomImage(path: fristPath, imageName: fristName),
        const SizedBox(width: 32),
        CustomImage(path: secondPath, imageName: secondName),
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
        fontSize: MediaQuery.sizeOf(context).width * 0.025,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

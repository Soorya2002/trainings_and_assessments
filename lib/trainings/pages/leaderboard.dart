import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * .15,
          ),
          Image.asset(
            ImagePath.leaderboardGif,
            width: screenWidth * 0.9,
          ),
          SizedBox(
            height: screenHeight * .01,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * .26,
              ),
              const Text(
                "ShareInfo",
                style: TextStyle(
                  color: CustomColor.darkOrange,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            width: screenWidth * .34,
          ),
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [CustomColor.vividPink, CustomColor.darkPink],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ).createShader(bounds);
            },
            child: const Text(
              'Leaderboards',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: CustomColor.white,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * .01,
          ),
          const Column(
            children: [
              Text(
                'You Haven’t Enough Permission to',
                style: TextStyle(
                  color: CustomColor.darkBlue,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Access This Feature !',
                style: TextStyle(
                  color: CustomColor.darkBlue,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * .009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Connect with Your Campus Administration to Unlock  ',
                style: TextStyle(
                  color: CustomColor.fontColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image.asset(ImagePath.unlockPng),
            ],
          ),
          SizedBox(
            height: screenHeight * .13,
          ),
          const Text(
            "Start an Assessment!",
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: CustomColor.fontColor,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),

          // SizedBox(
          //   height: screenHeight * .01,
          // ),
          CustomButton(
            text: 'Explore More',
            color: CustomColor.darkBlue,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/exit_assessment.dart';
import 'package:trainings_and_assessments/assessments/pages/submit_assessment.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/features/text_box.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class TechnicalAssessment extends StatelessWidget {
  const TechnicalAssessment({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(ImagePath.shareInfoMediumPng),
        ),
        actions: [
          const Text(
            "Quit",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: CustomColor.darkRed,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const ExitScreen()));
            },
            icon: Image.asset(
              ImagePath.quitPng,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * .05,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextBox(
                          text: '1',
                          textColor: CustomColor.darkOrange,
                          borderColor: CustomColor.darkOrange),
                      TextBox(
                          text: '00:59',
                          textColor: CustomColor.darkOrange,
                          borderColor: CustomColor.darkOrange),
                    ],
                  ),
                  TextBox(
                      text: '1/25',
                      textColor: CustomColor.darkOrange,
                      borderColor: CustomColor.darkOrange)
                ],
              ),
              SizedBox(
                height: screenHeight * .02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Write a Python program that calculates the area of a \nrectangle. The program should:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.darkOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .015,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '1. Prompt the user to enter the rectangle\'s width and \nheight (as integers). \n2. Calculate the area (width multiplied by height). \n3. Print the calculated area to the console with an \nappropriate message.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.fontColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .02,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: screenHeight * .015,
                      ),
                      Center(
                        child: Container(
                          width: screenWidth * .9,
                          height: screenHeight * .08,
                          decoration: const BoxDecoration(
                            color: CustomColor.whiteShade2,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: screenWidth * .15,
                                height: screenHeight * .04,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: CustomColor.darkBlue,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'main.py',
                                    style: TextStyle(
                                      color: CustomColor.darkBlue,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: screenWidth * .15,
                                height: screenHeight * .04,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: CustomColor.grey,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'output',
                                    style: TextStyle(
                                      color: CustomColor.grey,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth * .9,
                        height: screenHeight * .36,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 235, 233, 233),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\t\t1\t',
                                    style: TextStyle(
                                      color: CustomColor.darkBlue,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\t#Code Here',
                                    style: TextStyle(
                                      color: CustomColor.green,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: screenWidth * .06,
                                ),
                                const Text(
                                  'print("Hey shareInfo")',
                                  style: TextStyle(
                                    color: CustomColor.darkBlue,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: screenWidth * .17,
                      height: screenHeight * .035,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CustomColor.darkBlue,
                      ),
                      child: const Center(
                        child: Text(
                          'Run',
                          style: TextStyle(
                            color: CustomColor.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Should Mark one Answer or Skip to Continue",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.fontColor,
                ),
              ),
              CustomButton(
                  text: 'Next Question',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const SubmitScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

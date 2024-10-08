import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/data/mcq_questions_answers.dart';
import 'package:trainings_and_assessments/assessments/model/mcq_model.dart';
import 'package:trainings_and_assessments/assessments/pages/exit_assessment.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/features/text_box.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/dialogbox.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class McqQuestions extends StatefulWidget {
  const McqQuestions({super.key});

  @override
  State<McqQuestions> createState() => _McqQuestionsState();
}

class _McqQuestionsState extends State<McqQuestions> {
  final List<McqModel> _questions = McqQuestionsAnswers.mcqQuestionsAnswers;

  int _currentIndex = 0;
  void _nextQuestion() {
    _currentIndex = _currentIndex + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;
    double width = screenSize.width;
    final currentQuestion = _questions[_currentIndex];
    final List<String> options = ['A', 'B', 'C', 'D'];
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
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.12),
              Image.asset(
                ImagePath.shareInfoBigPng,
              ),
              const Row(
                children: [
                  Text(
                    "Title:",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: CustomColor.fontColor,
                    ),
                  ),
                  Text("  Python Basics",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: CustomColor.slateBlue))
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Test by:",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: CustomColor.fontColor,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: '  ShareInfo',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: CustomColor.darkOrange,
                        ),
                      ),
                      TextSpan(
                        text: ' for ',
                        style: TextStyle(
                          fontSize: 14,
                          color: CustomColor.fontColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'CE Thalassery',
                        style: TextStyle(
                          fontSize: 14,
                          color: CustomColor.darkBlue,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextBox(
                          text: 'Q${_currentIndex + 1}',
                          textColor: CustomColor.darkOrange,
                          borderColor: CustomColor.darkOrange),
                      const TextBox(
                          text: '00:59',
                          textColor: CustomColor.darkOrange,
                          borderColor: CustomColor.darkOrange),
                    ],
                  ),
                  TextBox(
                      text: 'Q${_currentIndex + 1}/25',
                      textColor: CustomColor.darkOrange,
                      borderColor: CustomColor.darkOrange)
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColor.whiteShade),
                  borderRadius: BorderRadius.circular(25),
                  color: CustomColor.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        currentQuestion.question,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: CustomColor.darkOrange,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 8, top: 4, bottom: 14),
                      child: Container(
                        height: height * 0.001,
                        color: CustomColor.whiteShade,
                      ),
                    ),
                    ...currentQuestion.options.asMap().map((index, option) {
                      return MapEntry(
                        index,
                        SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  '${String.fromCharCode(97 + index)}.',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: CustomColor.fontColor),
                                ),
                              ),
                              TextBox(
                                text: option,
                                textColor: CustomColor.darkBlue,
                                borderColor: CustomColor.darkBlue,
                              ),
                            ],
                          ),
                        ),
                      );
                    }).values,
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              const Center(
                child: Text(
                  "Mark Your Answers",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: CustomColor.darkOrange),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                child: SizedBox(
                  height: 48,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: options.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: TextBox(
                            text: options[index],
                            textColor: CustomColor.fontColor,
                            borderColor: CustomColor.fontColor,
                            horizontalPadding: 14,
                            verticalPadding: 10,
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const Center(
                child: Text(
                  "Skip this Question!",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: CustomColor.fontColor,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Should Mark one ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.fontColor,
                    ),
                  ),
                  Text(
                    "Answer ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: CustomColor.fontColor,
                        decoration: TextDecoration.underline),
                  ),
                  Text(
                    "or ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.fontColor,
                    ),
                  ),
                  Text(
                    "Skip ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: CustomColor.fontColor,
                        decoration: TextDecoration.underline),
                  ),
                  Text(
                    "to Continue",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.fontColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .02,
              ),
              CustomButton(
                  text: _currentIndex <= 2
                      ? 'Next Question'
                      : 'Finish Assessment',
                  onPressed: _currentIndex <= 2
                      ? _nextQuestion
                      : () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DialogBox();
                          }));
                        })
            ],
          ),
        ),
      ),
    );
  }
}

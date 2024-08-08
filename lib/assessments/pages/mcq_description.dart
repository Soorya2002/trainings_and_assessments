import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/instruction_screen.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/instruction_container.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class McqDescription extends StatelessWidget {
  const McqDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Assessments(MCQ)',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            screenWidth * 0.05,
          ),
          child: Column(
            children: [
              const InstructionContainer(),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  text: 'Attempt Now',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InstructionScreen(),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

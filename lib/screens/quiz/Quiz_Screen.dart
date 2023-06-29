import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/instance_manager.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controller/QuestionController.dart';
import 'package:quiz_app/screens/quiz/components/Body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        TextButton(
          onPressed: _controller.nextQuestion,
          child: Text(
            "Skip",
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
      body: Body(),
    );
  }
}

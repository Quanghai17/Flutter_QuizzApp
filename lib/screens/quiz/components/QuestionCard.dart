import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/instance_manager.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controller/QuestionController.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/Option.dart';
import 'package:quiz_app/screens/quiz/components/ProgressBar.dart';
import 'package:flutter/rendering.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: kBlackColor),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          ...List.generate(
              question.options.length,
              (index) => Option(
                    index: index,
                    text: question.options[index],
                    press: () => _controller.checkAns(question, index),
                  ))
        ]),
      ),
    );
  }
}

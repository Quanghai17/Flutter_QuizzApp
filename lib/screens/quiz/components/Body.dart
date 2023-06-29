import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controller/QuestionController.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/ProgressBar.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/screens/quiz/components/QuestionCard.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/icons/bg.svg',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ProgressBar(),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Obx(() => Text.rich(TextSpan(
                      text: "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context).textTheme.headlineSmall,
                      children: [
                        TextSpan(
                            text: "/${_questionController.question.length}")
                      ]))),
            ),
            const Divider(
              thickness: 1.5,
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            // QuestionCard()
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                onPageChanged: _questionController.updateTheQnNum,
                itemCount: _questionController.question.length,
                itemBuilder: (context, index) => QuestionCard(
                  question: _questionController.question[index],
                ),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controller/QuestionController.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/ProgressBar.dart';
import 'package:flutter/rendering.dart';

class Option extends StatelessWidget {
  const Option(
      {Key? key, required this.text, required this.index, required this.press});

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return kGreenColor;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${index + 1} $text",
                      style: TextStyle(color: getTheRightColor(), fontSize: 16),
                    ),
                    Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                          color: getTheRightColor() == kGrayColor
                              ? Colors.transparent
                              : getTheRightColor(),
                          border: Border.all(color: getTheRightColor()),
                          borderRadius: BorderRadius.circular(50)),
                      child: getTheRightColor() == kGrayColor
                          ? null
                          : Icon(getTheRightIcon(), size: 16),
                    )
                  ]),
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:quiz_app/constants.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/controller/QuestionController.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 90, 87, 87), width: 1),
          borderRadius: BorderRadius.circular(50)),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(
                    builder: (context, constraints) => Container(
                          width:
                              constraints.maxWidth * controller.animation.value,
                          decoration: BoxDecoration(
                            gradient: kPrimaryGradient,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        )),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "${(controller.animation.value * 60).round()} sec"),
                          SvgPicture.asset(
                            'assets/icons/clock.svg',
                            fit: BoxFit.fill,
                          ),
                        ]),
                  ),
                )
              ],
            );
          }),
    );
  }
}

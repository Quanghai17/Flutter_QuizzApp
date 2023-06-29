import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/instance_manager.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controller/QuestionController.dart';
import 'package:quiz_app/screens/quiz/components/Body.dart';
import 'package:quiz_app/screens/welcome/Welcome_Screen.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (builder) => const WelcomeScreen()));
          },
          child: Text(
            "Skip",
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/icons/bg.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            // height: double.infinity,
          ),
          Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "Thanks you ^^",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(
                flex: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}

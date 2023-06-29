import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz/Quiz_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/bg.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            // height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    const Text(
                      "Let's Play Quizz",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    const Text(
                      "Enter your informations below",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    TextField(
                      decoration: InputDecoration(
                          // filled: true,
                          fillColor: Color.fromARGB(255, 204, 205, 207),
                          hintText: "Full Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => const QuizScreen()));
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(kDefaultPadding * 0.75),
                        decoration: BoxDecoration(
                            gradient: kPrimaryGradient,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          "Let's Start Quizz",
                          style: TextStyle(
                              color: Color.fromARGB(255, 26, 26, 26),
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

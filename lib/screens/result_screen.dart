import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/screens/play_quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  int correctAnswers, wrongAnswers;

  ResultScreen({
    super.key,
    required this.correctAnswers,
    required this.wrongAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: bgcolor),
        backgroundColor: foregroundcolor,
        title: const Text(
          "Result",
          style: TextStyle(color: bgcolor),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab(
                  "Correct Answers",
                  correctAnswers,
                ),
                answerTab(
                  "Wrong Answers",
                  wrongAnswers,
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: foregroundcolor),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayQuizScreen(),
                  ),
                  (route) => false,
                );
              },
              child: const Text(
                "Reset Quiz",
                style: TextStyle(
                  color: bgcolor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget answerTab(String title, int num) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          num.toString(),
          style: const TextStyle(
            color: foregroundcolor,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

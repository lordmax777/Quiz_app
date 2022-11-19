import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/screens/play_quiz_screen.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: const Text(
          "Start Quiz",
          style: TextStyle(color: bgcolor),
        ),
        centerTitle: true,
        backgroundColor: foregroundcolor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Quiz App",
              style: TextStyle(
                color: foregroundcolor,
                fontSize: 45,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: foregroundcolor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayQuizScreen(),
                  ),
                );
              },
              child: const Text(
                "Start Quiz",
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
}

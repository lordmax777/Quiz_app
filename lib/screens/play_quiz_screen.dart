import 'package:flutter/material.dart';
import 'package:quiz_app/const/const.dart';
import 'package:quiz_app/models/quiz_question_model.dart';
import 'package:quiz_app/screens/result_screen.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({super.key});

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  final PageController pageController = PageController();
  bool isAnswerLocked = false;
  int currentIndex = 0, correctAnswers = 0, wrongAnswers = 0;
  String correctanswer = "", selectedAnswer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: foregroundcolor,
        iconTheme: const IconThemeData(color: bgcolor),
        title: const Text(
          "Play Quiz",
          style: TextStyle(color: bgcolor),
        ),
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: quizquestion.length,
        itemBuilder: (context, index) {
          QuizQuestionModel model = quizquestion[index];

          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    model.question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: List.generate(
                    model.options.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isAnswerLocked = true;
                            selectedAnswer = model.options[index];
                            correctanswer = model.correctanswer;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: foregroundcolor),
                            borderRadius: BorderRadius.circular(10),
                            color: selectedAnswer == model.options[index]
                                ? foregroundcolor
                                : bgcolor,
                          ),
                          padding: const EdgeInsets.all(16),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            model.options[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (isAnswerLocked) {
            if (selectedAnswer == correctanswer) {
              correctAnswers++;
            } else {
              wrongAnswers++;
            }

            currentIndex++;

            if (currentIndex != quizquestion.length) {
              pageController.jumpToPage(currentIndex);
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    correctAnswers: correctAnswers,
                    wrongAnswers: wrongAnswers,
                  ),
                ),
              );
            }
          } else {
            print("Please select any options");
          }
        },
        child: Container(
          height: 70,
          color: foregroundcolor,
          alignment: Alignment.center,
          child: const Text(
            "Next",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: bgcolor),
          ),
        ),
      ),
    );
  }
}

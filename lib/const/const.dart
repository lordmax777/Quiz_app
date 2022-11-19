import 'package:flutter/material.dart';

import '../models/quiz_question_model.dart';

const bgcolor = Color.fromRGBO(45, 27, 3, 1);
const foregroundcolor = Color.fromRGBO(244, 140, 6, 1);

List<QuizQuestionModel> quizquestion = [
  QuizQuestionModel(
    question: "Flutter used for ?",
    correctanswer: "This is an open-source UI toolkit",
    options: [
      "It is an open-source database management system",
      "This is an open-source UI toolkit",
      "This is an open-source backend toolkit",
      "None of the above",
    ],
  ),
  QuizQuestionModel(
    question: "Which below command to compile the profile mode in flutter ?",
    correctanswer: "flutter run --profile",
    options: [
      "flutter run --profile",
      "flutter run --release",
      "flutter run --pro",
      "flutter run --auto",
    ],
  ),
  QuizQuestionModel(
    question:
        "Which of the following are the best editors of flutter development?",
    correctanswer: "All the above",
    options: [
      "IntelliJ Idea",
      "Android Studio",
      "Xcode",
      "All the above",
    ],
  ),
  QuizQuestionModel(
    question: "Which is not a build mode in flutter?",
    correctanswer: "Testing",
    options: [
      "Debug",
      "Testing",
      "Profile",
      "Release",
    ],
  ),
];

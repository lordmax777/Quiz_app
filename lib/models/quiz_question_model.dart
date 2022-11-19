class QuizQuestionModel {
  final String question;
  final String correctanswer;
  final List<String> options;

  QuizQuestionModel({
    required this.question,
    required this.correctanswer,
    required this.options,
  });
}

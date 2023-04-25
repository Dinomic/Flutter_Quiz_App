class QuestionInformation {
  final String question;
  final Map<String, int> answers;

  QuestionInformation({required this.question, required this.answers});

  String get getQuestion {
    return question;
  }

  Map<String, int> get getAnswers {
    return answers;
  }
}

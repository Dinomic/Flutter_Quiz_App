import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import 'model/questionModel.dart';
import './resultPage.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  int _chosenQuestion = 0;
  int _totalScore = 0;
  final List<QuestionInformation> _quizList = <QuestionInformation>[
    QuestionInformation(
      question: 'What\'s your favorite color?',
      answers: {'Black': 10, 'Red': 15, 'Green': 20, 'White': 25},
    ),
    QuestionInformation(
      question: 'What\'s your favorite animal?',
      answers: {'Rabbit': 15, 'Snake': 25, 'Elephant': 10, 'Lion': 20},
    )
  ];

  void _answerOnpressed(int scoreToAdd) {
    setState(() {
      _totalScore += scoreToAdd;
      _chosenQuestion = _chosenQuestion + 1;
      print(_chosenQuestion);
    });
  }

  void _resetQuiz() {
    setState(() {
      _chosenQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _chosenQuestion != _quizList.length
            ? Column(
                children: [
                  Question(
                    questionText:
                        _quizList.elementAt(_chosenQuestion).getQuestion,
                  ),
                  ..._quizList
                      .elementAt(_chosenQuestion)
                      .getAnswers
                      .keys
                      .map((element) => Answer(
                            answerOnpressed: () => _answerOnpressed(_quizList
                                .elementAt(_chosenQuestion)
                                .getAnswers[element]!),
                            answerValue: element,
                          ))
                      .toList(),
                ],
              )
            : ResultPage(
                totalScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}

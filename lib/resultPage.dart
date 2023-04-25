import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key, required this.totalScore, required this.resetQuiz});

  final int totalScore;
  final VoidCallback resetQuiz;

  int get getTotalscore {
    return totalScore;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text('Your total score is: ' + getTotalscore.toString()),
        ),
        ElevatedButton(onPressed: resetQuiz, child: Text('Do it again!'))
      ],
    );
  }
}

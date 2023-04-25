import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback answerOnpressed;
  final String answerValue;

  const Answer({required this.answerOnpressed, required this.answerValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 184, 72, 38))
          ),
        onPressed: answerOnpressed,
        child: Text(answerValue)
        ),
    );
  }
}
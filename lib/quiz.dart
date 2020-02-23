import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> question;

  Quiz(
      {@required this.questionIndex,
      @required this.answerQuestion,
      @required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answers'] as List<String>).map((jawaban) {
          return Answer(answerQuestion, jawaban);
        }).toList(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;
  final List<Map> question;

  Quiz(
      {@required this.questionIndex,
      @required this.answerQuestion,
      @required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((jawaban) {
          return Answer(()=> answerQuestion(jawaban['nilai']), jawaban['text']);
        }).toList(),
      ],
    );
  }
}

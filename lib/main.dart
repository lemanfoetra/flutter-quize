import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  var question = [
    {
      'questionText': 'Apa Warna Favoritmu ?',
      'answers': ['Biru', 'Hijau', 'Merah']
    },
    {
      'questionText': 'Sipa Guru Favoritmu ?',
      'answers': ['Leman', 'Leman', 'Leman']
    },
    {
      'questionText': 'Berapa hasil dari 5 * 5 ?',
      'answers': ['5', '15', '25']
    },
    {
      'questionText': 'Apa Nama Ibukota Jepang ?',
      'answers': ['Jakarta', 'Bandung', 'Tokyo']
    },
    {
      'questionText': 'Bagaimana bentuk suara kucing ?',
      'answers': ['gugug', 'cess', 'miau']
    },
  ];

  void answerQuestion() {
    setState(() {
      if (questionIndex < question.length) {
        questionIndex = questionIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: questionIndex < question.length
            ? Quiz(questionIndex: questionIndex , answerQuestion: answerQuestion , question: question )
            : Result(),
      ),
    );
  }
}

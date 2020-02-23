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
  int skor          = 0;

  var question = [
    {
      'questionText': 'Apa Warna Favoritmu ?',
      'answers': [
        {'text': 'Hitam', 'nilai': 0},
        {'text': 'Merah', 'nilai': 1},
        {'text': 'Hijau', 'nilai': 2}
      ]
    },
    {
      'questionText': 'Hitung hasil dari 2 + 5 * 2 = ?',
      'answers': [
        {'text': '7', 'nilai': 0},
        {'text': '9', 'nilai': 0},
        {'text': '12', 'nilai': 2}
      ]
    },
    {
      'questionText': 'Siap presiden terbaik di Indonesia yang pernah ada menurut kamu ?',
      'answers': [
        {'text': 'Sukarno', 'nilai': 4},
        {'text': 'Suharto', 'nilai': 1},
        {'text': 'SBY', 'nilai': 3},
        {'text': 'Megawati', 'nilai': 2}
      ]
    },
    {
      'questionText': 'Menurut kamu pantaskah motor Nmex berkeliaran di jalanan ?',
      'answers': [
        {'text': 'Pantas', 'nilai': 1},
        {'text': 'Tidak Pantas', 'nilai': 1},
        {'text': 'Kurang Pantas', 'nilai': 3},
        {'text': 'Biasa Saja', 'nilai': 2}
      ]
    },
    {
      'questionText': 'Terlalu naif dengan satu Bahasa Pemrograman atau Framework apakah baik ?',
      'answers': [
        {'text': 'Baik', 'nilai': 1},
        {'text': 'Biasa Saja', 'nilai': 1},
        {'text': 'Buruk', 'nilai': 2}
      ]
    },
  ];

  void answerQuestion(int skor) {
    setState(() {
      if (questionIndex < question.length) {
        questionIndex = questionIndex + 1;
        this.skor += skor;
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
            ? Quiz(
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
                question: question)
            : Result(skor: skor,),
      ),
    );
  }
}

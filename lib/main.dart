import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
		{ 'questionText': 'Apa Warna Favoritmu ?', 'answers' : ['Biru', 'Hijau', 'Merah'] },
    { 'questionText': 'Sipa Guru Favoritmu ?', 'answers' : ['Leman', 'Leman', 'Leman'] },
    { 'questionText': 'Berapa hasil dari 5 * 5 ?', 'answers' : ['5', '15', '25'] },
    { 'questionText': 'Apa Nama Ibukota Jepang ?', 'answers' : ['Jakarta', 'Bandung', 'Tokyo'] },
    { 'questionText': 'Bagaimana bentuk suara kucing ?', 'answers' : ['gugug', 'cess', 'miau'] },
	];


  void answerQuestion(){
    setState(() {
      if(questionIndex < question.length ) {
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
				body: questionIndex < question.length ? Column(
					children: 
          <Widget>[
						Question(
							question[questionIndex]['questionText']
						),
            ...(question[questionIndex]['answers'] as List<String>).map((jawaban) {
              return Answer(answerQuestion, jawaban);
            }).toList(),
					],
				) : Center( child: Text('Anda telah menyelesaikan kuis'), ) ,
			),
		);
	}
}

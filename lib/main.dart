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
		"Apa Warna Favorit Kamu? ",
		"Apa Makanan Kesukaan Kamu ?",
		"Apa Film Kesukaan Kamu ?",
	];

	void nextQuestion() {
		setState(() {
			if (questionIndex < (question.length - 1)) {
				questionIndex = questionIndex + 1;
			}
		});
	}

	void backQuestion() {
		setState(() {
			if (questionIndex > 0) {
				questionIndex = questionIndex - 1;
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
				body: Column(
					children: <Widget>[
						Question(
							question[questionIndex]
						),
            Answer(nextQuestion),
						Answer(nextQuestion),
					  Answer(nextQuestion)
					],
				),
			),
		);
	}
}

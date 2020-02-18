import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text('First App'),
				),
				body: Column(
					children: <Widget>[
						Text('Pertanyaan!'),
						RaisedButton(child: Text('Pertanyaan 1'), onPressed: showQuestion	),
						RaisedButton(child: Text('Pertanyaan 2'), onPressed: showQuestion	),
						RaisedButton(child: Text('Pertanyaan 3'), onPressed: showQuestion 	)
					],
				),
				),
			);
	}



	void showQuestion(){
		print("tombol ditekan");
	}
}

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
					children: <Widget>[   									// <Widget> []  : merupakan list yang berobjek Widget
						Text('Pertanyaan!'),
						RaisedButton(child: Text('Pertanyaan 1'), onPressed: showQuestion	),
						RaisedButton(
							child: Text('Pertanyaan 2'), 
							onPressed: (){									// "() { }" Anonim Function
								print('Tombol 2 ditekan');
						}	),
						RaisedButton(
							child: Text('Pertanyaan 3'), 
							onPressed: () => print('Tombol 3 Ditekan'), 	// "() =>" Anonim function 
						)
					],
				),
				),
			);
	}



	void showQuestion(){
		print("tombol ditekan 1");
	}
}

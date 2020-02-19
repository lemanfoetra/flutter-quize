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
				body: Container(
          child: NumberScreen(),
        ),
			),
		);
	}

}


class NumberScreen extends StatefulWidget {

  @override
  NumberScreenState createState(){
    return NumberScreenState();
  }
  
}



class NumberScreenState extends State<NumberScreen>{

  int number = 10;
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        Center(
          child: Text(
            this.number.toString(), 
            style: TextStyle( fontSize: 30 ),),
        ),
        Positioned(
          bottom: 50,
          right: 50,
          child: FloatingActionButton( 
            child: Icon(Icons.plus_one),
            onPressed: (){ 
              setState(() {
                this.number = this.number + 1;
            }); 
          },)
        ),
      ],
    );
  }

}

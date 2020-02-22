import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final Function questionFunction;

  Answer(this.questionFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: 
            RaisedButton(
              color: Colors.blue,
              child: Text('Button 1'),
              onPressed: questionFunction
            ),
    );
  }
}
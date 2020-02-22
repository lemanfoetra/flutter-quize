import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final Function questionFunction;
  final String jawaban;
  Answer(this.questionFunction, this.jawaban);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: 
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text(jawaban),
              onPressed: questionFunction
            ),
    );
  }
}
import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int skor;

  Result({this.skor});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text('Anda Telah Menyelesaikan Kuize Dengan Nilai Skor : $skor ', style: TextStyle(fontSize: 18) ),
        ),
    );
  }
}
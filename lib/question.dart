import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;    // Property of type String

  Question(this.questionText); // Constructor

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,       // takes the entire with of the device
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
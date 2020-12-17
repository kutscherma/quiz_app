import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; // Property of type "Function"
  final String answerText;

  Answer(this.selectHandler, this.answerText); // Constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,   // takes the entire width of the device
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

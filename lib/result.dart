import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (finalScore < 20) {
      resultText = 'You are strange';
    } else if (finalScore < 35) {
      resultText = 'You are awesome!';
    } else {
      resultText = 'You are the best!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz!'), textColor: Colors.blue,)
        ],
      ),
    );
  }
}

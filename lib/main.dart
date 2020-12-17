//Import material Widgets
import 'package:flutter/material.dart';

//Import custom Widgets
import './quiz.dart';
import './result.dart';

//This functions starts the app (entry point)
void main() {
  runApp(MyApp());
}

//This makes MyAppState to a Stateful Widget
//This creates a new state of the "MyAppState" objects when data changes
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); // _ means the class, properties and methods are private and cannot be used outside this file
  }
}

//This Widget is the entire App currently
//Class with the state of thw Widgets
//It is connected with the class "MyApp" to load a news state if data changes
class _MyAppState extends State<MyApp> {

  var _questionsIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    //setState() method tells flutter to re-run the build() method of the Widget in which you call setState()
    //because data has changed
    _totalScore += score;

    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'black', 'score': 5},
        {'text': 'white', 'score': 1},
        {'text': 'green', 'score': 15}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'sheep', 'score': 10},
        {'text': 'dog', 'score': 15},
        {'text': 'cat', 'score': 20},
        {'text': 'elephant', 'score': 25}
      ]
    },
    {
      'questionText': 'What\'s your favorite Band?',
      'answers': [
        {'text': 'Nirvana', 'score': 10},
        {'text': 'Pearl Jam', 'score': 15},
        {'text': 'Metallica', 'score': 30},
        {'text': 'The Killers', 'score': 5}
      ]
    },
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: _questionsIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionsIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}

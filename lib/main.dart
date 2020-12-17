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
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['blue', 'black', 'white', 'green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['sheep', 'dog', 'cat', 'elephant']
    },
    {
      'questionText': 'What\'s your favorite Band?',
      'answers': ['Nirvana', 'Pearl Jam', 'Metallica', 'The Killers']
    },
  ];

  var _questionsIndex = 0;

  void _answerQuestion() {
    //setState() method tells flutter to re-run the build() method of the Widget in which you call setState()
    //because data has changed
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

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
            : Result()
      ),
    );
  }
}

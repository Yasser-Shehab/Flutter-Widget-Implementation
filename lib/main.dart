import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 7},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 9},
        {'text': 'White', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Lion', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite Game?',
      'answers': [
        {'text': 'Minecraft', 'score': 7},
        {'text': 'Red Dead Redemption2', 'score': 10},
        {'text': 'GTA V', 'score': 9},
        {'text': 'Yakuza', 'score': 100}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(
                  _totalScore,
                )),
    );
  }
}

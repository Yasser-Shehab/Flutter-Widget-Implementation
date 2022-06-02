import 'package:flutter/material.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  var _questionIndex = 0;
  void answerQuestion() {
    print(questions.length);
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
        body: Column(children: [
          Question(questions[_questionIndex]),
          ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
          ElevatedButton(
              onPressed: () => print('Answer 2 chosen!!!'),
              child: Text('Answer 2')),
          ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3')),
        ]),
      ),
    );
  }
}

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(@required this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore >= 100) {
      resultText = 'You\'re a LEGEND';
    } else if (resultScore >= 16) {
      resultText = 'Not bad, But you can do better';
    } else if (resultScore >= 10) {
      resultText = 'You did great';
    } else {
      resultText = "Not Good Bro";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}

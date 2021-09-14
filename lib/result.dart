import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetScore;

  Result(this.resultScore, this.resetScore);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: const Text('Restart'),
            textColor: Colors.red,
            onPressed: resetScore,
          )
        ],
      ),
    );
  }
}

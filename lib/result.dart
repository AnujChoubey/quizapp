import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 19) {
      resultText = 'You are the Lord of Wind Zephyr!';
    } else if (resultScore <= 22) {
      resultText = 'You are the King of Seven Seas!!';
    } else if (resultScore <= 25) {
      resultText = 'You are the protector of Gaia!!';
    } else {
      resultText = 'You are the demong king emperor!!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

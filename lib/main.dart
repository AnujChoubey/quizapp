import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
//void main() {
// runApp(Wilcoteck());
//}

void main() => runApp(Wilcoteck());

class Wilcoteck extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WilcoteckState();
  }
}

class _WilcoteckState extends State<Wilcoteck> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 7},
        {'text': 'White', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dragon', 'score': 10},
        {'text': 'Hydra', 'score': 8},
        {'text': 'Kraken', 'score': 7},
        {'text': 'Falcon', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favourite element?',
      'answers': [
        {'text': 'Fire', 'score': 10},
        {'text': 'Earth', 'score': 8},
        {'text': 'Water', 'score': 7},
        {'text': 'Air', 'score': 6},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      //var aBool = true;
      //aBool = false;
      _totalScore += score;

      print('We have more questions');
    } else {
      print('No more questions!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['Hello'];
    //dummy.add('Max');
    //print(dummy);
    //questions = []; does not work if value is const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WILCOTECK'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/end.dart';

import './quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

//* The _ in front of MyAppState is to make it a private class instead of public
class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  var _questionNum = 0;
  var _totalScore = 0;

  final _quesList = [
    {
      'qnTxt': 'What is your favorite thing?',
      'ans': [
        {'text': 'Cars', 'score': 9},
        {'text': 'Bikes', 'score': 8},
        {'text': 'Phones', 'score': 7},
        {'text': 'Computers', 'score': 10},
      ],
    },
    {
      'qnTxt': 'What is your favorite place?',
      'ans': [
        {'text': 'Hotel', 'score': 8},
        {'text': 'Home', 'score': 9},
        {'text': 'College', 'score': 10},
        {'text': 'Dormitory', 'score': 7},
      ],
    },
    {
      'qnTxt': 'What is your favorite color?',
      'ans': [
        {'text': 'Orange', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Black', 'score': 9},
        {'text': 'Blue', 'score': 7},
      ],
    },
    {
      'qnTxt': 'What is your favorite sport?',
      'ans': [
        {'text': 'Cricket', 'score': 9},
        {'text': 'Football', 'score': 7},
        {'text': 'Basketball', 'score': 8},
        {'text': 'F1', 'score': 10},
      ],
    },
  ];

  void _answerFunc(int score) {
    _totalScore += score;

    setState(() {
      _questionNum += 1;
    });
    // print(_questionNum);
  }

  @override //? Its just a decorator that makes our code much clearer (good practice)
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Quiz App',
              textAlign: TextAlign.center,
            ),
          )),
      body: _questionNum < _quesList.length
          ? Quiz(
              _answerFunc,
              _quesList,
              _questionNum,
            )
          : End(_totalScore),
    ));
  }
}

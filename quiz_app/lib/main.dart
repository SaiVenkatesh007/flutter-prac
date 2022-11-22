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
  final _quesList = [
    {
      'qnTxt': 'What is your favorite thing?',
      'ans': ['Cars', 'Bikes', 'Phones', 'Computers'],
    },
    {
      'qnTxt': 'What is your favorite place?',
      'ans': ['Hotel', 'Home', 'College', 'Dormitory'],
    },
    {
      'qnTxt': 'What is your favorite color?',
      'ans': ['Orange', 'Red', 'Black', 'Blue'],
    },
    {
      'qnTxt': 'What is your favorite sport?',
      'ans': ['Cricket', 'Football', 'Basketball', 'F1'],
    },
  ];

  void _answerFunc() {
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
          : End(),
    ));
  }
}

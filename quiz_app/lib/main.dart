import 'package:flutter/material.dart';

import './qn.dart';
import './ans.dart';

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

  void _answerFunc() {
    setState(() {
      if(_questionNum < 2) {
        _questionNum += 1;
      }
    });
    // print(_questionNum);
  }

  @override //? Its just a decorator that makes our code much clearer (good practice)
  Widget build(BuildContext context) {
    var quesList = [
      'What is your favorite thing?',
      'What is your favorite place?',
      'Why are you a human being?',
    ];

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
          )
      ),
      body: Column(
        children: [
          Question(
            quesList[_questionNum],
            ),
          Answer(_answerFunc),
          Answer(_answerFunc),
          Answer(_answerFunc),
          ],
        ),
      )
    );
  }
}

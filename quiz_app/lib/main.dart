import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  var questionNum = 0;

  void answerFunc() {
    setState(() {
      if(questionNum < 2) {
        questionNum += 1;
      }
    });
    print(questionNum);
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
        title: const Text('Test App'),
      ),
      body: Column(
        children: [
          Text(quesList[questionNum]),
          ElevatedButton(
              onPressed:
                  answerFunc, //? Shouldn't use () after function to make it act as a pointer
              child: const Text('Option 1')),
          ElevatedButton(onPressed: answerFunc, child: const Text('Option 2')),
          ElevatedButton(
              onPressed: answerFunc,
              child: const Text('Option 3')),
        ],
      ),
    ));
  }
}

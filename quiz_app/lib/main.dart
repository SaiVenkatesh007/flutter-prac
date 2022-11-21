import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  void answerFunc() {
    print('The Answer has been selected!');
  }

  @override //? Its just a decorator that makes our code much clearer (good practice)
  Widget build(BuildContext context) {
    var quesList = [
      'What is your favorite thing?',
      'What is your favorite place?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: Column(
        children: [
          const Text('The Question is: '),
          ElevatedButton(
            onPressed: answerFunc, //? Shouldn't use () after function to make it act as a pointer
            child: const Text('Option 1')
            ),
          ElevatedButton(
            onPressed: answerFunc, 
            child: const Text('Option 2')
            ),
          ElevatedButton(
            onPressed: answerFunc, 
            child: const Text('Option 3')
            ),
        ],
      ),
    ));
  }
}

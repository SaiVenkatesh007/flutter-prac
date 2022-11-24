import 'package:flutter/material.dart';

//! This custom widget is unneccesary, its just for a trial
class Question extends StatelessWidget {
  final String questionTxt;

  const Question(this.questionTxt, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(15, 25, 15, 15),
      child: Text(
      questionTxt,
      style: const TextStyle(
        fontSize: 20,
        ),
      textAlign: TextAlign.center,
      )
    );
  }
}

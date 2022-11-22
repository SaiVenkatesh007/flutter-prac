import 'package:flutter/material.dart';

import './ans.dart';
import './qn.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quesList;
  final int questionNum;
  final Function answerFunc;

  Quiz(this.answerFunc, this.quesList, this.questionNum);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (quesList[questionNum])['qnTxt'].toString(),
        ),
        ...(quesList[questionNum]['ans'] as List<Map<String, Object>>).map(
          (answer) => Answer(() => answerFunc(answer['score']), answer['text'].toString())
        )
    ],
    );
  }
}

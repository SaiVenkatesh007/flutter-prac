import 'package:flutter/material.dart';

class End extends StatelessWidget {
  final int endScore;

  End(this.endScore);

  String get endStatement {
    String endText;

    if (endScore == 40) {
      endText = 'You are the perfect person!';
    } else if (35 < endScore && endScore < 40) {
      endText = 'You were almost perfect ... but not really :)';
    } else if (30 < endScore && endScore <= 35) {
      endText = 'You are OK to the max!';
    } else {
      endText = 'You\'ve got to improve man for real!';
    }

    return endText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        endStatement,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class End extends StatelessWidget {
  final int endScore;
  final VoidCallback resetFunc;

  const End(this.endScore, this.resetFunc, {super.key});

  String get endStatement {
    String endText;

    if (endScore == 40) {
      endText = 'You are the perfect person!';
    } else if (35 < endScore && endScore < 40) {
      endText = 'You were almost perfect ... but not really :)';
    } else if (30 < endScore && endScore <= 35) {
      endText = 'You are OK to the max!';
    } else {
      endText = 'You\'ve gotta improve man for real!';
    }

    return endText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Column(
        children: [
          Text(
            endStatement,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: OutlinedButton(
              onPressed: resetFunc,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 2,
                  color: Colors.orangeAccent,
                ),
              ),
              child: const Text(
                "Gotta give it anotha' shot",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

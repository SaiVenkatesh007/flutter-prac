import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecter;

  Answer(this.selecter);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: ElevatedButton(
        onPressed: selecter,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)),
        child: const Text(
          'Option 1',
          style: TextStyle(color: Color.fromARGB(255, 252, 11, 91)),
        ),
      ),
    );
  }
}

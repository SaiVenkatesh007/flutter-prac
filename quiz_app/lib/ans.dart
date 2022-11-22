import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecter;
  final String ansTxt;

  const Answer(this.selecter, this.ansTxt);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: ElevatedButton(
        onPressed: selecter,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)),
        child: Text(
          ansTxt,
          style: const TextStyle(color: Color.fromARGB(255, 245, 245, 245)),
        ),
      ),
    );
  }
}

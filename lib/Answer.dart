import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const answer({super.key});
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class answer_file extends StatelessWidget {
  // const answer({super.key});
  final VoidCallback selectHandler;
  final String answerText;
  answer_file(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,//double.infinity for whole space.
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// class Answer extends StatelessWidget
// {
//   final VoidCallback printText;
//   Answer(this.printText);
//   @override
//   Widget build(BuildContext context)
//   {
//     return Container
//     (
//         width: double.infinity,
//         child: ElevatedButton
//         (
//           // ignore: sort_child_properties_last
//           // ignore: prefer_const_constructors
//           child: Text('Answer 1', style: TextStyle(color: Colors.red)),
//           onPressed: printText,
//         )
//         );
//   }
// }
import 'package:flutter/material.dart';

class Answer extends StatelessWidget 
{
  // const answer({super.key});
  final VoidCallback selectHandler;
  final String answerText = "";
  Answer(this.selectHandler, String answerText);
  @override
  Widget build(BuildContext context) 
  {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

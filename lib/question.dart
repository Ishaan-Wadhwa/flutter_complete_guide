// import 'package:flutter/material.dart';
// class Question extends StatelessWidget
// {
//   final String
//       questionText; //Tells that since this is a stateless widget therefore its properties(variables) can not be changed at the runtime.
//   Question(this.questionText);
//   @override
//   Widget build(BuildContext context)
//   {
//     return Container
//     (
//         child: Text
//         (
//           questionText,
//           style: TextStyle(fontSize: 18),
//           textAlign: TextAlign.center,
//         ),
//         margin: EdgeInsets.all(6),
//         width: double.infinity
//         );
//   }
// }
import 'package:flutter/material.dart';

class question extends StatelessWidget {
  var questiontext;
  question(this.questiontext);

  @override
  Widget build(BuildContext context) 
  {
    return Text(questiontext,style:TextStyle());
  }
}

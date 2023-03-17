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

//multiple constructor in dart
// //classname.constructor name()
// {

// }

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/solution.dart';

class Question extends StatelessWidget {
  var questiontext;
  Question(this.questiontext, List<Answer> list);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      width:double.infinity,
      margin:EdgeInsets.all(10),
    child:
    Text
    (
      questiontext,
      style:TextStyle(fontSize:19),
      textAlign: TextAlign.center,
      )
    );
  }
}

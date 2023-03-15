// import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';

//void main() => runApp(MyApp());
//shorthand for functions having single line of code.
// {
//   runApp(MyFirstApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _MyAppState();
//   }
// }

//class _MyAppState /*here the underscore makes the member a private member.*/ extends State< /*Here comes the name of the App*/ MyApp> {
/*StatelessWidget*/

// var questionindex = 0;
// var questions = [
//   {
//     'QuestionText': 'What is your fav color?',
//     'AnswerText': ['Black', 'Green', 'Red', 'Blue'],
//   },
//   {
//     'QuestionText': 'What is your fav fruit?',
//     'AnswerText': ['Apple', 'Orange', 'Banana', 'Grapes'],
//   },
//   {
//     'QuestionText': 'What is your fav car?',
//     'AnswerText': ['BMW', 'MERCEDES', 'AUDI', 'BENTLEY'],
//   }
// ];
// void printText() {
//   setState(() {
//     print(questionindex);
//     questionindex++;
//   });
// }

// @override
// Widget build(BuildContext context)
// {
//   return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text('My first Flutter Project')),
//           body: Column(children:
//           [
//             Question(questions.elementAt()),
//             Answer(printText),
//             /*ElevatedButton(
//                 child: Text('Answer 1'),
//                 onPressed:
//                     printText*/ /* Anonymous Functions*/ /*printText*/ /*null*/

//             Answer(
//                 printText), /*ElevatedButton(
//                 child: Text('Answer 2'),
//                 onPressed: printText*/ /* Anonymous Functions*/ /*printText*/
//             Answer(printText)
//               /*ElevatedButton(
//                   child: Text('Answer 3'),
//                   onPressed: printText*/ /* Anonymous Functions*/ /*printText*/
//             ]) /*Text('This is the default text.')*/));
//   }
// }

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  void answerquestion() {
    setState(() {
      _questionindex++;
    });
    print('answer chosen');
  }

  var questions = [
    'what is your name?',
    'what is your favourite color?',
    'what is your favourite food?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My first app')),
            body: Column(children: [
              question(/*'the question'*/ questions[_questionindex]),
              answer(answerquestion),
              // ElevatedButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.blue),
              //       foregroundColor: MaterialStateProperty.all(Colors.white),
              //     ),
              //     child: Text('option 1'),
              //     onPressed: answerquestion /*() => print('answer 1 chosen')*/
              //     ),
              answer(answerquestion),
              // ElevatedButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.blue),
              //       foregroundColor: MaterialStateProperty.all(Colors.white),
              //     ),
              //     child: Text('option 2'),
            //     onPressed: answerquestion), //() => print('answer 2 chosen')),
            answer(answerquestion),
              // ElevatedButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.blue),
              //       foregroundColor: MaterialStateProperty.all(Colors.white),
              //     ),
              //     child: Text('option 3'),
              //     onPressed: answerquestion) //() => print('answer 3 chosen'))
            ])));
  }
}

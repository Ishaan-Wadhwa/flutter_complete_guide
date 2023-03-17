// // import 'package:flutter/material.dart';
// // import './question.dart';
// // import './answer.dart';

// //void main() => runApp(MyApp());
// //shorthand for functions having single line of code.
// // {
// //   runApp(MyFirstApp());
// // }

// // class MyApp extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() {
// //     // TODO: implement createState
// //     return _MyAppState();
// //   }
// // }

// //class _MyAppState /*here the underscore makes the member a private member.*/ extends State< /*Here comes the name of the App*/ MyApp> {
// /*StatelessWidget*/

// // var questionindex = 0;
// // var questions = [
// //   {
// //     'QuestionText': 'What is your fav color?',
// //     'AnswerText': ['Black', 'Green', 'Red', 'Blue'],
// //   },
// //   {
// //     'QuestionText': 'What is your fav fruit?',
// //     'AnswerText': ['Apple', 'Orange', 'Banana', 'Grapes'],
// //   },
// //   {
// //     'QuestionText': 'What is your fav car?',
// //     'AnswerText': ['BMW', 'MERCEDES', 'AUDI', 'BENTLEY'],
// //   }
// // ];
// // void printText() {
// //   setState(() {
// //     print(questionindex);
// //     questionindex++;
// //   });
// // }

// // @override
// // Widget build(BuildContext context)
// // {
// //   return MaterialApp(
// //       home: Scaffold(
// //           appBar: AppBar(title: Text('My first Flutter Project')),
// //           body: Column(children:
// //           [
// //             Question(questions.elementAt()),
// //             Answer(printText),
// //             /*ElevatedButton(
// //                 child: Text('Answer 1'),
// //                 onPressed:
// //                     printText*/ /* Anonymous Functions*/ /*printText*/ /*null*/

// //             Answer(
// //                 printText), /*ElevatedButton(
// //                 child: Text('Answer 2'),
// //                 onPressed: printText*/ /* Anonymous Functions*/ /*printText*/
// //             Answer(printText)
// //               /*ElevatedButton(
// //                   child: Text('Answer 3'),
// //                   onPressed: printText*/ /* Anonymous Functions*/ /*printText*/
// //             ]) /*Text('This is the default text.')*/));
// //   }
// // }

// import 'package:flutter/material.dart';
// import './question.dart';
// import './solution.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var _questionindex = 0;

//   void _answerquestion() {
//     setState(() {
//       _questionindex++;
//     });
//     print('answer chosen');
//   }

//   var questions = /*square brackets are used to initialise a map*/ [
//     {
//       'questionText': 'what is your color?',
//       'answers': ['black', 'red', 'yellow', 'pink']
//     },
//     {
//       'questionText': 'what is your favourite animal?',
//       'answer': ['Rabbit', 'dear', 'elephant', 'lion']
//     },
//     {
//       'questionText': 'what is your favourite food?',
//       'answers': ['pizza', 'burger', 'fries', 'noodles']
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: Text('My first app')),
//             body: Column(children: [
//               Question(
//                 /*'the question'*/ questions[_questionindex][
//                     'questionText'], //question dynamically change using map indexing
//                 (questions[_questionindex]['answers'] as List<String>)
//                     .map((answer) {
//                   return Answer(_answerquestion, answer);
//                 }).toList(),
//               ),

//               Answer(_answerquestion),
//               // ElevatedButton(
//               //     style: ButtonStyle(
//               //       backgroundColor: MaterialStateProperty.all(Colors.blue),
//               //       foregroundColor: MaterialStateProperty.all(Colors.white),
//               //     ),
//               //     child: Text('option 1'),
//               //     onPressed: answerquestion /*() => print('answer 1 chosen')*/
//               //     ),
//               Answer(_answerquestion),
//               // ElevatedButton(
//               //     style: ButtonStyle(
//               //       backgroundColor: MaterialStateProperty.all(Colors.blue),
//               //       foregroundColor: MaterialStateProperty.all(Colors.white),
//               //     ),
//               //     child: Text('option 2'),
//               //     onPressed: answerquestion), //() => print('answer 2 chosen')),
//               Answer(_answerquestion),
//               // ElevatedButton(
//               //     style: ButtonStyle(
//               //       backgroundColor: MaterialStateProperty.all(Colors.blue),
//               //       foregroundColor: MaterialStateProperty.all(Colors.white),
//               //     ),
//               //     child: Text('option 3'),
//               //     onPressed: answerquestion) //() => print('answer 3 chosen'))
//             ])));
//   }
// }
import 'package:flutter/material.dart';

import './question.dart';
import './solution.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question
            (
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}


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

// The static keyword is used for a class-level variable and method that is the same for every instance of a class, this means if a data member is static, it can be accessed without creating an object.

import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerquestion() {
    setState(() {
      _questionIndex++;
      // _questionIndex = _questionIndex + 1;
    });
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = /*square brackets are used to initialise a map*/ [
      {
        'questionText': 'what is your color?',
        'answers': ['black', 'red', 'yellow', 'pink']
      },
      {
        'questionText': 'what is your favourite animal?',
        'answer': ['Rabbit', 'dear', 'elephant', 'lion']
      },
      {
        'questionText': 'what is your favourite food?',
        'answers': ['pizza', 'burger', 'fries', 'noodles']
      }, //if never want to change the value of a variable then make it const.
      //const variable must be initialised.
      //if you know that the value of the variable will not change once initialised then make it final.
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerquestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}


              
    
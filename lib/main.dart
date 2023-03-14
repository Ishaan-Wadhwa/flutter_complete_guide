import 'package:flutter/material.dart';
void main() 
{
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget 
{
  Widget build(BuildContext context) 
  {
    return MaterialApp(home: Text('This is my first flutter project.'));
  }
}

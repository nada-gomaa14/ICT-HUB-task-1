import 'package:flutter/material.dart';
import 'package:task1/screen.dart';


void main() {
  runApp(Task1());
}

class Task1 extends StatelessWidget{
  const Task1({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}
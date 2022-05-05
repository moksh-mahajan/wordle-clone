import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var solution;

  // States
  var turn = 0;
  var currentGuess = '';
  var guesses = []; // Formatted Guesses
  var history = []; // Simple strings
  var isCorrect = false;

  void formatGuess() {}

  void addNewGuess() {}

  void handleKeyup() {}

  @override
  void initState() {
    super.initState();
    Dio().get('http://localhost:3000/solutions').then((response) {
      // random int between 0 & 14
      final json = response.data as List;
      final random = Random();
      final randomSolution = json[random.nextInt(5)];
      print('Moksh: ${randomSolution['word']}');
      setState(() {
        solution = randomSolution['word'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Wordle'),
        foregroundColor: Colors.black,
      ),
      body: Column(children: [
        Divider(
          height: 40,
        ),
        if (solution != null) Text('Solution is: $solution')
      ]),
    );
  }
}

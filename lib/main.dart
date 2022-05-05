import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    //  Dio().get('http://localhost:3000/solutions').then((response) {
    // random int between 0 & 14
    //   final json = response.data as List;
    //   final random = Random();
    //   final randomSolution = json[random.nextInt(5)];
    //   print('Moksh: ${randomSolution['word']}');
    //   setState(() {
    //     solution = randomSolution['word'];
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      onKey: (event) {
        // print(event);
        if (event is RawKeyUpEvent) {
          print(event.data.keyLabel);

          if (event.logicalKey == LogicalKeyboardKey.backspace &&
              currentGuess.isNotEmpty) {
            setState(() {
              currentGuess = currentGuess.substring(0, currentGuess.length - 1);
            });
            return;
          }

          if (currentGuess.length < 5) {
            setState(() {
              currentGuess += event.data.keyLabel;
            });
          }
        }

        // if (event is RawKeyUpEvent) {
        //   print(event.character);
        //   print(event.data);
        // }
      },
      autofocus: true,
      focusNode: FocusNode(),
      child: Scaffold(
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
          Text('Current guess - $currentGuess')
        ]),
      ),
    );
  }
}

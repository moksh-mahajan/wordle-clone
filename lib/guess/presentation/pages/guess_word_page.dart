import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/grid.dart';

class GuessWordPage extends StatefulWidget {
  const GuessWordPage({Key? key}) : super(key: key);

  @override
  State<GuessWordPage> createState() => _GuessWordPageState();
}

class _GuessWordPageState extends State<GuessWordPage> {
  var solution = 'moksh';

  // States
  var turn = 0;
  var currentGuess = '';
  final List guesses = [
    null,
    null,
    null,
    null,
    null,
    null
  ]; // Formatted Guesses
  var history = []; // Simple strings
  var isCorrect = false;

  List<Map<String, dynamic>> formatGuess() {
    final solutionArray =
        solution.runes.map((c) => String.fromCharCode(c)).toList();
    final formattedGuess = currentGuess.runes
        .map((c) => {
              'color': Colors.grey,
              'key': String.fromCharCode(c),
            })
        .toList();

    // find any green letters
    formattedGuess.asMap().forEach((index, letter) {
      if (letter['key'] == solutionArray[index]) {
        formattedGuess[index]['color'] = Colors.green;
        solutionArray[index] = '';
      }
    });

    // find any yellow letters
    formattedGuess.asMap().forEach((index, letter) {
      if (solutionArray.contains(letter['key']) &&
          letter['color'] != Colors.green) {
        formattedGuess[index]['color'] = Colors.yellow;
        solutionArray[solutionArray.indexOf(letter['key'] as String)] = '';
      }
    });

    return formattedGuess;
  }

  void addNewGuess(List formatted) {
    if (currentGuess == solution) {
      setState(() {
        isCorrect = true;
      });
    }

    setState(() {
      guesses[turn] = formatted;
      history.add(currentGuess);
      turn++;
      currentGuess = '';
    });
  }

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
          if (event.logicalKey == LogicalKeyboardKey.enter) {
            // only add guess if turn is less than 5
            if (turn > 5) {
              print('You used all your guesses!');
              return;
            }

            // do not allow duplicate words
            if (history.contains(currentGuess)) {
              print('You already tried that word!');
              return;
            }

            // check word is 5 chars long
            if (currentGuess.length < 5) {
              print('Word must be 5 chars long!');
              return;
            }

            final formatted = formatGuess();
            addNewGuess(formatted);
          }

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
          title: Text(
            'Wordle',
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          foregroundColor: Colors.black,
        ),
        body: Column(children: [
          Divider(
            height: 40,
          ),
          Text('Solution - $solution'),
          Text('Current guess - $currentGuess'),
          Grid(
            currentGuess: currentGuess,
            turn: turn,
            guesses: guesses,
          ),
        ]),
      ),
    );
  }
}

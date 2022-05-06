import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  final String currentGuess;
  final List guesses;
  final int turn;
  const Grid({
    Key? key,
    required this.currentGuess,
    required this.guesses,
    required this.turn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: guesses.asMap().entries.map((entry) {
      if (turn == entry.key) {
        return GridRow(
          currentGuess: currentGuess,
        );
      }
      return GridRow(
        guess: entry.value,
      );
    }).toList());
  }
}

class GridRow extends StatelessWidget {
  final String? currentGuess;
  final List? guess;

  const GridRow({
    Key? key,
    this.guess,
    this.currentGuess,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (guess != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: guess!
            .map((e) => Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  child: Text(
                    e['key'].toUpperCase(),
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: e['color'], border: Border.all(color: e['color'])),
                ))
            .toList(),
      );
    }

    if (currentGuess != null) {
      final letters = currentGuess!.split('');
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...letters,
          ...List.generate(5 - letters.length, (index) => ''),
        ]
            .map((c) => Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  child: Text(
                    c.toUpperCase(),
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(border: Border.all()),
                ))
            .toList(),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.all(4),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
        ),
      ).toList(),
    );
  }
}

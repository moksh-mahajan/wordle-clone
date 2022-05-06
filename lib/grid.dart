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
    return Column(children: const [
      GridRow(),
      GridRow(),
      GridRow(),
      GridRow(),
      GridRow(),
      GridRow(),
    ]);
  }
}

class GridRow extends StatelessWidget {
  const GridRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

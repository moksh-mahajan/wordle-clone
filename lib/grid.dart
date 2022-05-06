import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  final String currentGuess;
  final List guesses;
  final int turn;

  Grid({
    Key? key,
    required this.currentGuess,
    required this.guesses,
    required this.turn,
  }) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  // final controller = FlipCardController();

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 0), () {
  //     controller.toggleCard();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // return FlipCard(
    //   controller: controller,
    //   flipOnTouch: false,
    //   fill: Fill
    //       .fillBack, // Fill the back side of the card to make in the same size as the front.
    //   direction: FlipDirection.VERTICAL, // default
    //   front: Container(
    //     height: 60,
    //     width: 60,
    //     alignment: Alignment.center,
    //     child: Text(
    //       'R',
    //       style: Theme.of(context).textTheme.displaySmall,
    //     ),
    //     margin: EdgeInsets.all(4),
    //     decoration: BoxDecoration(border: Border.all()),
    //   ),
    //   back: Container(
    //     height: 60,
    //     width: 60,
    //     alignment: Alignment.center,
    //     child: Text(
    //       'M',
    //       style: Theme.of(context).textTheme.displaySmall,
    //     ),
    //     margin: EdgeInsets.all(4),
    //     decoration: BoxDecoration(border: Border.all()),
    //   ),
    // );
    return Column(
        children: widget.guesses.asMap().entries.map((entry) {
      if (widget.turn == entry.key) {
        return GridRow(
          currentGuess: widget.currentGuess,
        );
      }
      return GridRow(
        guess: entry.value,
        flip: entry.key == widget.turn - 1,
      );
    }).toList());
  }
}

class GridRow extends StatefulWidget {
  final String? currentGuess;
  final List? guess;
  final bool flip;

  const GridRow({
    Key? key,
    this.flip = false,
    this.guess,
    this.currentGuess,
  }) : super(key: key);

  @override
  State<GridRow> createState() => _GridRowState();
}

class _GridRowState extends State<GridRow> {
  var _isFlipped = false;
  final _flipControllers = List.generate(5, (index) => FlipCardController());

  @override
  void initState() {
    super.initState();
  }

  Future<void> flipCards() async {
    for (final controller in _flipControllers) {
      controller.toggleCard();
      await Future.delayed(Duration(milliseconds: 150));
    }
    _isFlipped = true;
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // executes after build
      if (widget.flip && !_isFlipped) {
        flipCards();
      }
    });
    if (widget.guess != null) {
      if (widget.flip) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.guess!
              .asMap()
              .entries
              .map((entry) => FlipCard(
                    controller: _flipControllers[entry.key],
                    flipOnTouch: false,
                    fill: Fill.fillBack,
                    direction: FlipDirection.VERTICAL,
                    front: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text(
                        entry.value['key'].toUpperCase(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                    back: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text(
                        entry.value['key'].toUpperCase(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: entry.value['color'],
                          border: Border.all(color: entry.value['color'])),
                    ),
                  ))
              .toList(),
        );
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.guess!
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
                      color: e['color'],
                      border: Border.all(
                          color: widget.flip ? Colors.red : e['color'])),
                ))
            .toList(),
      );
    }

    if (widget.currentGuess != null) {
      final letters = widget.currentGuess!.split('');
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

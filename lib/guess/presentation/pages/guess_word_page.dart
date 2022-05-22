import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordle/guess/application/guess_word_notifier.dart';
import '../widgets/grid.dart';

class GuessWordPage extends ConsumerWidget {
  const GuessWordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        if (event is RawKeyUpEvent) {
          if (event.logicalKey == LogicalKeyboardKey.enter) {
            ref.read(guessWordNotifierProvider.notifier).enterKeyPressed();
          }

          if (event.logicalKey == LogicalKeyboardKey.backspace) {
            ref.read(guessWordNotifierProvider.notifier).backspaceKeyPressed();
            return;
          }

          ref
              .read(guessWordNotifierProvider.notifier)
              .letterKeyPressed(event.data.keyLabel);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Wordle',
            style: GoogleFonts.pacifico(
              textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          leading: Row(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help_outline),
            )
          ]),
          leadingWidth: 80,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.leaderboard_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            )
          ],
        ),
        body: Column(children: [
          const Divider(height: 0, color: Colors.grey),
          const SizedBox(
            height: 24,
          ),
          Grid(
            currentGuess: ref.watch(guessWordNotifierProvider).currentGuess,
            turn: ref.watch(guessWordNotifierProvider).turn,
            guesses: ref.watch(guessWordNotifierProvider).guesses,
          ),
        ]),
      ),
    );
  }
}

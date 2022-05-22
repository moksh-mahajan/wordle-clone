import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordle/guess/domain/letter.dart';
part 'guess_word_notifier.freezed.dart';

final guessWordNotifierProvider =
    StateNotifierProvider<GuessWordNotifier, GuessWordState>(
        (ref) => GuessWordNotifier());

@freezed
class GuessWordState with _$GuessWordState {
  const GuessWordState._();
  const factory GuessWordState({
    required String solution,
    required int turn,
    required String currentGuess,
    required List<List<Letter>> guesses,
    required List<String> history,
    required bool isCorrect,
  }) = _GuessWordState;

  factory GuessWordState.initial() => const GuessWordState(
      solution: 'flank',
      turn: 0,
      currentGuess: '',
      guesses: [],
      history: [],
      isCorrect: false);
}

class GuessWordNotifier extends StateNotifier<GuessWordState> {
  GuessWordNotifier() : super(GuessWordState.initial());

  List<Letter> _formatGuess() {
    final solutionArray =
        state.solution.runes.map((c) => String.fromCharCode(c)).toList();
    final formattedGuess = state.currentGuess.runes
        .map((c) => Letter(color: Colors.grey, key: String.fromCharCode(c)))
        .toList();

    // find any green letters
    formattedGuess.asMap().forEach((index, letter) {
      if (letter.key == solutionArray[index]) {
        formattedGuess.removeAt(index);
        formattedGuess.insert(
            index, Letter(color: Colors.green, key: letter.key));
        solutionArray[index] = '';
      }
    });

    // find any yellow letters
    formattedGuess.asMap().forEach((index, letter) {
      if (solutionArray.contains(letter.key) && letter.color != Colors.green) {
        formattedGuess.removeAt(index);
        formattedGuess.insert(
            index, Letter(color: Colors.yellow, key: letter.key));
        solutionArray[solutionArray.indexOf(letter.key)] = '';
      }
    });

    return formattedGuess;
  }

  void _addNewGuess(List<Letter> formatted) {
    if (state.currentGuess == state.solution) {
      state = state.copyWith(isCorrect: true);
    }
    state = state.copyWith(
      currentGuess: '',
      turn: state.turn + 1,
      history: [...state.history, state.currentGuess],
      guesses: [...state.guesses, formatted],
    );
  }

  void enterKeyPressed() {
    if (state.turn > 5) {
      return;
    }

    if (state.history.contains(state.currentGuess)) {
      return;
    }

    if (state.currentGuess.length < 5) {
      return;
    }

    final formatted = _formatGuess();
    _addNewGuess(formatted);
  }

  void backspaceKeyPressed() {
    if (state.currentGuess.isNotEmpty) {
      state = state.copyWith(
          currentGuess:
              state.currentGuess.substring(0, state.currentGuess.length - 1));
    }
  }

  void letterKeyPressed(String letter) {
    if (state.currentGuess.length < 5) {
      state = state.copyWith(currentGuess: '${state.currentGuess}$letter');
    }
  }
}

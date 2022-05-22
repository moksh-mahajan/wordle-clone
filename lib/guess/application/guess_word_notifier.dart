import 'package:freezed_annotation/freezed_annotation.dart';
part 'guess_word_notifier.freezed.dart';

@freezed
class GuessWordState with _$GuessWordState {
  const GuessWordState._();
  const factory GuessWordState({
    required String solution,
    required int turn,
    required String currentGuess,
    required List guesses,
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

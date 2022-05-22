// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guess_word_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuessWordState {
  String get solution => throw _privateConstructorUsedError;
  int get turn => throw _privateConstructorUsedError;
  String get currentGuess => throw _privateConstructorUsedError;
  List<dynamic> get guesses => throw _privateConstructorUsedError;
  List<String> get history => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuessWordStateCopyWith<GuessWordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuessWordStateCopyWith<$Res> {
  factory $GuessWordStateCopyWith(
          GuessWordState value, $Res Function(GuessWordState) then) =
      _$GuessWordStateCopyWithImpl<$Res>;
  $Res call(
      {String solution,
      int turn,
      String currentGuess,
      List<dynamic> guesses,
      List<String> history,
      bool isCorrect});
}

/// @nodoc
class _$GuessWordStateCopyWithImpl<$Res>
    implements $GuessWordStateCopyWith<$Res> {
  _$GuessWordStateCopyWithImpl(this._value, this._then);

  final GuessWordState _value;
  // ignore: unused_field
  final $Res Function(GuessWordState) _then;

  @override
  $Res call({
    Object? solution = freezed,
    Object? turn = freezed,
    Object? currentGuess = freezed,
    Object? guesses = freezed,
    Object? history = freezed,
    Object? isCorrect = freezed,
  }) {
    return _then(_value.copyWith(
      solution: solution == freezed
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as String,
      turn: turn == freezed
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as int,
      currentGuess: currentGuess == freezed
          ? _value.currentGuess
          : currentGuess // ignore: cast_nullable_to_non_nullable
              as String,
      guesses: guesses == freezed
          ? _value.guesses
          : guesses // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCorrect: isCorrect == freezed
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_GuessWordStateCopyWith<$Res>
    implements $GuessWordStateCopyWith<$Res> {
  factory _$$_GuessWordStateCopyWith(
          _$_GuessWordState value, $Res Function(_$_GuessWordState) then) =
      __$$_GuessWordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String solution,
      int turn,
      String currentGuess,
      List<dynamic> guesses,
      List<String> history,
      bool isCorrect});
}

/// @nodoc
class __$$_GuessWordStateCopyWithImpl<$Res>
    extends _$GuessWordStateCopyWithImpl<$Res>
    implements _$$_GuessWordStateCopyWith<$Res> {
  __$$_GuessWordStateCopyWithImpl(
      _$_GuessWordState _value, $Res Function(_$_GuessWordState) _then)
      : super(_value, (v) => _then(v as _$_GuessWordState));

  @override
  _$_GuessWordState get _value => super._value as _$_GuessWordState;

  @override
  $Res call({
    Object? solution = freezed,
    Object? turn = freezed,
    Object? currentGuess = freezed,
    Object? guesses = freezed,
    Object? history = freezed,
    Object? isCorrect = freezed,
  }) {
    return _then(_$_GuessWordState(
      solution: solution == freezed
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as String,
      turn: turn == freezed
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as int,
      currentGuess: currentGuess == freezed
          ? _value.currentGuess
          : currentGuess // ignore: cast_nullable_to_non_nullable
              as String,
      guesses: guesses == freezed
          ? _value._guesses
          : guesses // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      history: history == freezed
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCorrect: isCorrect == freezed
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GuessWordState extends _GuessWordState {
  const _$_GuessWordState(
      {required this.solution,
      required this.turn,
      required this.currentGuess,
      required final List<dynamic> guesses,
      required final List<String> history,
      required this.isCorrect})
      : _guesses = guesses,
        _history = history,
        super._();

  @override
  final String solution;
  @override
  final int turn;
  @override
  final String currentGuess;
  final List<dynamic> _guesses;
  @override
  List<dynamic> get guesses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guesses);
  }

  final List<String> _history;
  @override
  List<String> get history {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'GuessWordState(solution: $solution, turn: $turn, currentGuess: $currentGuess, guesses: $guesses, history: $history, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuessWordState &&
            const DeepCollectionEquality().equals(other.solution, solution) &&
            const DeepCollectionEquality().equals(other.turn, turn) &&
            const DeepCollectionEquality()
                .equals(other.currentGuess, currentGuess) &&
            const DeepCollectionEquality().equals(other._guesses, _guesses) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            const DeepCollectionEquality().equals(other.isCorrect, isCorrect));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(solution),
      const DeepCollectionEquality().hash(turn),
      const DeepCollectionEquality().hash(currentGuess),
      const DeepCollectionEquality().hash(_guesses),
      const DeepCollectionEquality().hash(_history),
      const DeepCollectionEquality().hash(isCorrect));

  @JsonKey(ignore: true)
  @override
  _$$_GuessWordStateCopyWith<_$_GuessWordState> get copyWith =>
      __$$_GuessWordStateCopyWithImpl<_$_GuessWordState>(this, _$identity);
}

abstract class _GuessWordState extends GuessWordState {
  const factory _GuessWordState(
      {required final String solution,
      required final int turn,
      required final String currentGuess,
      required final List<dynamic> guesses,
      required final List<String> history,
      required final bool isCorrect}) = _$_GuessWordState;
  const _GuessWordState._() : super._();

  @override
  String get solution => throw _privateConstructorUsedError;
  @override
  int get turn => throw _privateConstructorUsedError;
  @override
  String get currentGuess => throw _privateConstructorUsedError;
  @override
  List<dynamic> get guesses => throw _privateConstructorUsedError;
  @override
  List<String> get history => throw _privateConstructorUsedError;
  @override
  bool get isCorrect => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GuessWordStateCopyWith<_$_GuessWordState> get copyWith =>
      throw _privateConstructorUsedError;
}

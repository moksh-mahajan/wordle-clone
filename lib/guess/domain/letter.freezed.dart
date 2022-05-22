// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'letter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Letter {
  Color get color => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LetterCopyWith<Letter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LetterCopyWith<$Res> {
  factory $LetterCopyWith(Letter value, $Res Function(Letter) then) =
      _$LetterCopyWithImpl<$Res>;
  $Res call({Color color, String key});
}

/// @nodoc
class _$LetterCopyWithImpl<$Res> implements $LetterCopyWith<$Res> {
  _$LetterCopyWithImpl(this._value, this._then);

  final Letter _value;
  // ignore: unused_field
  final $Res Function(Letter) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LetterCopyWith<$Res> implements $LetterCopyWith<$Res> {
  factory _$$_LetterCopyWith(_$_Letter value, $Res Function(_$_Letter) then) =
      __$$_LetterCopyWithImpl<$Res>;
  @override
  $Res call({Color color, String key});
}

/// @nodoc
class __$$_LetterCopyWithImpl<$Res> extends _$LetterCopyWithImpl<$Res>
    implements _$$_LetterCopyWith<$Res> {
  __$$_LetterCopyWithImpl(_$_Letter _value, $Res Function(_$_Letter) _then)
      : super(_value, (v) => _then(v as _$_Letter));

  @override
  _$_Letter get _value => super._value as _$_Letter;

  @override
  $Res call({
    Object? color = freezed,
    Object? key = freezed,
  }) {
    return _then(_$_Letter(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Letter extends _Letter {
  const _$_Letter({required this.color, required this.key}) : super._();

  @override
  final Color color;
  @override
  final String key;

  @override
  String toString() {
    return 'Letter(color: $color, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Letter &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$$_LetterCopyWith<_$_Letter> get copyWith =>
      __$$_LetterCopyWithImpl<_$_Letter>(this, _$identity);
}

abstract class _Letter extends Letter {
  const factory _Letter(
      {required final Color color, required final String key}) = _$_Letter;
  const _Letter._() : super._();

  @override
  Color get color => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LetterCopyWith<_$_Letter> get copyWith =>
      throw _privateConstructorUsedError;
}

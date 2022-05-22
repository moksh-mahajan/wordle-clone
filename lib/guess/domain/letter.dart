import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'letter.freezed.dart';

@freezed
class Letter with _$Letter {
  const Letter._();
  const factory Letter({
    required Color color,
    required String key,
  }) = _Letter;
}

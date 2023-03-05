import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const factory Result.error(
    Exception e
  ) = Error;
  const factory Result.data(
    T data
  ) = Data;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'store.freezed.dart';

@freezed
class Store with _$Store {
  const factory Store({
    @Default('') String name,
    @Default('') String imageUrl
  }) = _Store;
}

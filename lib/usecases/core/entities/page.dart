import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'page.freezed.dart';

@freezed
class Page<T> with _$Page {
  const factory Page({
    required String cursor,
    required bool hasNextPage,
    required List<T> items 
  }) = _Page;
}

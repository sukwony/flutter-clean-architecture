import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'brand.freezed.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    @Default('') String name,
    @Default('') String imageUrl
  }) = _Brand;
}

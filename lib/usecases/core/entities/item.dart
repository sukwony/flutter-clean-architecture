import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'brand.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    @Default('') String name,
    @Default('') String imageUrl,
    @Default(.0) double price,
    @Default(.0) double orgPrice,
    Brand? brand,
  }) = _Item;
}

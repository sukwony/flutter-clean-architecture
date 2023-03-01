import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'screen.freezed.dart';

@freezed
class Screen with _$Screen {
  const Screen._();

  const factory Screen.explore() = Explore;
  const factory Screen.user() = User;

  String get className {
    return when(
      explore: () => 'Explore',
      user: () => 'User'
    );
  }

  String getName(Object? arguments) {
    final args = arguments as Map<String, dynamic>;
    return when(
      explore: () => 'explore',
      user: () => 'users/${args['userId']}'
    );
  }

  static const explore_ = Screen.explore();
  static const user_ = Screen.user();
}

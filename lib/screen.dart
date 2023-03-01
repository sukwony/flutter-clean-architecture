import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'screen.freezed.dart';

@freezed
class Screen with _$Screen {
  const Screen._();

  const factory Screen.explore() = Explore;
  const factory Screen.user() = User;
  const factory Screen.unknown() = Unknown;

  static const _explore = Screen.explore();
  static const _user = Screen.user();
  static const _unknown = Screen.unknown();

  static Screen fromPath(String path) {
    if (path.startsWith('explore')) return _explore;
    if (path.startsWith('users/')) return _user;
    return _unknown;
  }

  Map<String, dynamic> parsePath(String path) {
    final splitted = path.split('/');

    return when(
      explore: () => {},
      user: () {
        return { 'userId': splitted[1] };
      },
      unknown: () => {}
    );
  }

  String get className {
    return when(
      explore: () => 'Explore',
      user: () => 'User',
      unknown: () => 'Unknown'
    );
  }

  String getName(Object? arguments) {
    final args = arguments as Map<String, dynamic>;
    return when(
      explore: () => 'explore',
      user: () => 'users/${args['userId']}',
      unknown: () => 'unknown'
    );
  }
}

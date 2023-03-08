import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'screen.freezed.dart';

@freezed
class Screen with _$Screen {
  const Screen._();

  const factory Screen.explore() = Explore;
  const factory Screen.tag() = Tag;
  const factory Screen.user() = User;
  const factory Screen.unknown() = Unknown;

  static const _explore = Screen.explore();
  static const _tag = Screen.tag();
  static const _user = Screen.user();
  static const _unknown = Screen.unknown();

  static Screen fromPath(String path) {
    if (path.startsWith('explore')) return _explore;
    if (path.startsWith('tags/')) return _tag;
    if (path.startsWith('users/')) return _user;
    return _unknown;
  }

  Map<String, dynamic> parsePath(String path) {
    final splitted = path.split('/');

    return when(
      explore: () => {},
      tag: () => { 'tagId': splitted[1] },
      user: () {
        return { 'userId': splitted[1] };
      },
      unknown: () => {}
    );
  }

  String get className {
    return when(
      explore: () => 'Explore',
      tag: () => 'Tag',
      user: () => 'User',
      unknown: () => 'Unknown'
    );
  }

  String getName(Map<String, dynamic> arguments) {
    return when(
      explore: () => 'explore',
      tag: () => 'tags/${arguments['tagId']}',
      user: () => 'users/${arguments['userId']}',
      unknown: () => 'unknown'
    );
  }
}

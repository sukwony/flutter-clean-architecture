import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/entities/item.dart';
import '../core/entities/page.dart';
import '../core/entities/result.dart';
import 'repository.dart';

@riverpod
Future<Result<Page<Item>>> getItemPageForTag(TagRepository tagRepository, {
  required String tagId, required String after, int first = 60
}) {
  return tagRepository.getItemPageForTag(tagId: tagId, after: after);
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/entities/item.dart';
import '../core/entities/page.dart';
import 'repository.dart';

@riverpod
Future<Page<Item>> getItemPageForTag(TagRepository tagRepository, {
  required String tagId, required String after, int first = 60
}) {
  return tagRepository.getItemPageForTag(tagId: tagId, after: after, first: first);
}

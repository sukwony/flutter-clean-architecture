import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/entities/item.dart';
import '../core/entities/page.dart';
import 'repository.dart';

part 'usecases.g.dart';

@riverpod
Future<Page<Item>> getItemPageByTagId(GetItemPageByTagIdRef ref, {
  required String tagId,
  required String after,
  int first = 60
}) {
  final tagRepository = ref.watch(tagRepositoryProvider);
  return tagRepository.getItemPageByTagId(tagId: tagId, after: after, first: first);
}

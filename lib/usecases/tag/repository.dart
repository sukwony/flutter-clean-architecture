import '../core/entities/item.dart';
import '../core/entities/page.dart';

abstract class TagRepository {
  Future<Page<Item>> getItemPageForTag({
    required String tagId, required String after, required int first
  });
}

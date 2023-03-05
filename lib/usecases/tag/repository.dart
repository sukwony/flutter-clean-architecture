import '../core/entities/item.dart';
import '../core/entities/page.dart';
import '../core/entities/result.dart';

abstract class TagRepository {
  Future<Result<Page<Item>>> getItemPageForTag({
    required String tagId, required String after, int first = 60
  });
}
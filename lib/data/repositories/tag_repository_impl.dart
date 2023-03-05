import '../../usecases/core/entities/item.dart';
import '../../usecases/core/entities/page.dart';
import '../../usecases/tag/repository.dart';

class TagRepositoryImpl extends TagRepository {
  @override
  Future<Page<Item>> getItemPageForTag({
    required String tagId, required String after, required int first
  }) {
    return Future.value(
      const Page(
        cursor: '',
        hasNextPage: false,
        items: [Item(), Item()]
      )
    );
  }
}
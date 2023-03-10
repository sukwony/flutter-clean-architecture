import '../../usecases/core/entities/item.dart';
import '../../usecases/core/entities/page.dart';
import '../../usecases/tag/repository.dart';

class TagRepositoryImpl extends TagRepository {
  @override
  Future<Page<Item>> getItemPageByTagId({
    required String tagId, required String after, required int first
  }) {
    return Future.value(
      const Page(
        cursor: '',
        hasNextPage: false,
        items: [Item(
          name: '피쉬테일 숏파카',
          imageUrl: 'https://picsum.photos/301',
          price: 11290000
        )]
      )
    );
  }
}

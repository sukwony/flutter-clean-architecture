import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../usecases/core/entities/item.dart';
import '../../usecases/tag/usecases.dart';

part 'tag_view_model.freezed.dart';
part 'tag_view_model.g.dart';

@freezed
class TagState with _$TagState {
  const factory TagState({
    @Default([]) List<Item> items
  }) = _TagState;
}

@riverpod
class TagViewModel extends _$TagViewModel {
  @override
  FutureOr<TagState> build(String incarnationId) async {
      final page = await ref.watch(getItemPageForTagProvider(tagId: '1', after: '').future);
      return TagState(items: page.items as List<Item>);
  }

  Future<void> doSomething() async {
    state = const AsyncValue.loading();
    try {
      final page = await ref.watch(getItemPageForTagProvider(tagId: '1', after: '').future);
      state = AsyncValue.data(TagState(items: page.items as List<Item>));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
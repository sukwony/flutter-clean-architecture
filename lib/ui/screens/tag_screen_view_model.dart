import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../screen_key.dart';
import '../../usecases/core/entities/item.dart';
import '../../usecases/tag/usecases.dart';

part 'tag_screen_view_model.freezed.dart';
part 'tag_screen_view_model.g.dart';

@freezed
class TagScreenState with _$TagScreenState {
  const factory TagScreenState({
    @Default([]) List<Item> items
  }) = _TagScreenState;
}

@riverpod
class TagScreenViewModel extends _$TagScreenViewModel {
  @override
  FutureOr<TagScreenState> build(double key) async {
      final page = await ref.watch(getItemPageForTagProvider(tagId: '1', after: '').future);
      return TagScreenState(items: page.items as List<Item>);
  }

  Future<void> doSomething() async {
    state = const AsyncValue.loading();
    try {
      final page = await ref.watch(getItemPageForTagProvider(tagId: '1', after: '').future);
      state = AsyncValue.data(TagScreenState(items: page.items as List<Item>));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}

@Riverpod(dependencies: [screenKey])
AsyncValue<TagScreenState> tagScreenState(TagScreenStateRef ref) {
  final screenKey = ref.watch(screenKeyProvider);
  return ref.watch(tagScreenViewModelProvider(screenKey));
}

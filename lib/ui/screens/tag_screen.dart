import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/item_tile.dart';
import 'tag_screen_view_model.dart';

class TagScreen extends ConsumerWidget {
  const TagScreen({ super.key });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tagScreenState = ref.watch(tagScreenStateProvider);

    return Center(
      child: tagScreenState.when(
        data: (state) => SizedBox(
          width: 200,
          child: ItemTile(
            imageUrl: state.items[0].imageUrl
          ),
        ),
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err')
      )
    );
  }
}

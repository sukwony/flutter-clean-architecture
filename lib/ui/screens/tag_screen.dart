import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import '../widgets/item_tile.dart';
import '../widgets/rounded_container.dart';
import 'tag_screen_view_model.dart';

class TagScreen extends ConsumerWidget {
  const TagScreen({ super.key });

  Widget _render(BuildContext context, TagScreenState state) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) => Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 44),
                Text(
                  '사고싶은 신발들',
                  style: textStyles.s24BoldYdestreet.copyWith(color: colors.textWhite)
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    RoundedContainer(
                      radius: 12,
                      child: Image.network(
                        'https://picsum.photos/208',
                        width: 32,
                        height: 32
                      )
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'by 17,300 하두세네다여일여아열하두',
                      style: textStyles.s12Medium.copyWith(color: colors.textWhite)
                    )
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ), childCount: 1)
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 159,
              crossAxisSpacing: 12,
              mainAxisSpacing: 25,
            ),
            delegate: SliverChildBuilderDelegate((context, index) => ItemTile(
              imageUrl: state.items[index].imageUrl
            ), childCount: state.items.length)
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tagScreenState = ref.watch(tagScreenStateProvider);

    return tagScreenState.when(
      data: (state) => _render(context, state),
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err')
    );
  }
}

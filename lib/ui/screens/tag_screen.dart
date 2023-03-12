import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import '../widgets/item_square.dart';
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
        SliverToBoxAdapter(
          child: Container(
            color: colors.backgroundBlack,
            child: Column(
              children: [
                Padding(
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
                            'by 하두세네다여일여아열하두',
                            style: textStyles.s12Medium.copyWith(color: colors.textWhite)
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36)
                  ),
                  child: Container(
                    color: colors.backgroundWhite,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                      child: Row(
                        children: [
                          Text(
                            '95개의 위시템',
                            style: textStyles.s12Bold.copyWith(color: colors.textGreyOnWhite),
                          ),
                          const Spacer(),
                          ImageIcon(
                            const AssetImage('icons/filter.png'),
                            color: colors.iconGreyOnLightGrey,
                            size: 14
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 159,
              crossAxisSpacing: 12,
              mainAxisSpacing: 25,
              childAspectRatio: 106.0 / 150
            ),
            delegate: SliverChildBuilderDelegate((context, index) => ItemTile(
              item: state.items[index]
            ), childCount: state.items.length)
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final tagScreenState = ref.watch(tagScreenStateProvider);

    return Container(
      color: colors.backgroundWhite,
      child: tagScreenState.when(
        data: (state) => _render(context, state),
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err')
      ),
    );
  }
}

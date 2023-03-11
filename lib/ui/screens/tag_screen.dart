import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/ui/widgets/rounded_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import '../widgets/item_tile.dart';
import 'tag_screen_view_model.dart';

class TagScreen extends ConsumerWidget {
  const TagScreen({ super.key });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final appTextStyles =Theme.of(context).extension<AppTextStyles>()!;
    final tagScreenState = ref.watch(tagScreenStateProvider);

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
                  style: appTextStyles.s24BoldYdestreet.copyWith(color: appColors.textWhite)
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
                      style: appTextStyles.s12Medium.copyWith(color: appColors.textWhite)
                    )
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ), childCount: 1)
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildBuilderDelegate((context, index) => Center(
            child: tagScreenState.when(
              data: (state) => SizedBox(
                child: ItemTile(
                  imageUrl: state.items[0].imageUrl
                ),
              ),
              loading: () => const CircularProgressIndicator(),
              error: (err, stack) => Text('Error: $err')
            )
          ), childCount: 20)
        )
      ],
    );
  }
}

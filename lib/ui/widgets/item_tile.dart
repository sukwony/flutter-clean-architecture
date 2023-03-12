import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../usecases/core/entities/item.dart';
import '../app_colors.dart';
import '../app_text_styles.dart';
import 'item_square.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({
    super.key,
    required this.item
  });
  
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;
    final formatter = NumberFormat('#,###');
    final brand = item.brand;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemSquare(
          imageUrl: item.imageUrl
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4, top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formatter.format(item.price / 100),
                style: textStyles.s11Bold.copyWith(color: colors.textGreyOnWhite)
              ),
              Text(
                item.name,
                style: textStyles.s10Medium.copyWith(color: colors.textGreyOnWhite),
                overflow: TextOverflow.ellipsis,
              ),
              if (brand != null) Text(
                brand.name,
                style: textStyles.s10Medium.copyWith(color: colors.textGreyOnWhite),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'rounded_container.dart';

class ItemTile extends StatelessWidget {
  final String imageUrl;

  const ItemTile({
    super.key,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return RoundedContainer(
      radius: 20,
      borderWidth: 1,
      borderColor: appColors.backgroundLightGreyOnWhite,
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.network(imageUrl, 
          fit: BoxFit.cover
        ),
      )
    );
  }
}
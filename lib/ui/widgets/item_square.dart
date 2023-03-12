import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'app_rounded.dart';

class ItemSquare extends StatelessWidget {
  final String imageUrl;

  const ItemSquare({
    super.key,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return AppRounded(
      radius: 20,
      borderWidth: 1,
      borderColor: colors.backgroundLightGreyOnWhite,
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.network(imageUrl, 
          fit: BoxFit.cover
        ),
      )
    );
  }
}
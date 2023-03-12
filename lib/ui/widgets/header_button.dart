import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'app_rounded.dart';

class HeaderButton extends StatelessWidget {
  final String assetName;

  const HeaderButton(this.assetName, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return AppRounded(
      radius: 14,
      child: Container(
        color: colors.backgroundLightGreyOnWhite,
        width: 32,
        height: 32,
        child: Center(
          child: ImageIcon(
            AssetImage(assetName),
            color: colors.iconGreyOnLightGrey,
            size: 14
          ),
        ),
      )
    );
  }
}

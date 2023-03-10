import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_colors.dart';

class TagScreen extends ConsumerWidget {
  final String screenName;
  final Widget child;

  const TagScreen({
    super.key,
    required this.screenName,
    required this.child
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            screenName,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: appColors.textBlackOnWhite
            )
          ),
          child
        ]
      ),
    );
  }
}

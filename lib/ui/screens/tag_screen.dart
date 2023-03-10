import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_colors.dart';

class TagScreen extends ConsumerWidget {
  const TagScreen({ super.key });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Center(
      child: Column(),
    );
  }
}

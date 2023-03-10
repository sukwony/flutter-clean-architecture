import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'screen_key.g.dart';

@riverpod
double screenKey(ScreenKeyRef ref) => Random().nextDouble();

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/repositories/tag_repository_impl.dart';
import 'usecases/tag/repository.dart';

final coreRepositoryProvider = Provider<TagRepository>((ref) => TagRepositoryImpl());

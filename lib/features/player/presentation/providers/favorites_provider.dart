import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/usecases/get_favorite_ids.dart';
import '../../domain/usecases/toggle_favorite.dart';

part 'favorites_provider.g.dart';

@Riverpod(keepAlive: true)
class Favorites extends _$Favorites {
  @override
  Future<Set<String>> build() {
    return getIt<GetFavoriteIds>()();
  }

  Future<bool> toggle(String productId) async {
    final result = await getIt<ToggleFavorite>()(productId);
    ref.invalidateSelf();
    await future;
    return result;
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/config/game_config.dart';
import '../../../../core/di/injector.dart';
import '../../domain/entities/purchase_record.dart';
import '../../domain/entities/sell_result.dart';
import '../../domain/usecases/add_player_xp.dart';
import '../../domain/usecases/get_purchase_history.dart';
import '../../domain/usecases/sell_purchase_unit.dart';
import 'player_progress_provider.dart';

part 'purchase_history_provider.g.dart';

@Riverpod(keepAlive: true)
class PurchaseHistory extends _$PurchaseHistory {
  @override
  Future<List<PurchaseRecord>> build() {
    return getIt<GetPurchaseHistory>()();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }

  Future<SellResult> sellUnit({
    required String orderId,
    required String productId,
  }) async {
    final result = await getIt<SellPurchaseUnit>()(
      orderId: orderId,
      productId: productId,
    );
    await getIt<AddPlayerXp>()(GameConfig.xpPerSale);
    ref.invalidate(playerLevelProvider);
    ref.invalidateSelf();
    await future;
    return result;
  }
}

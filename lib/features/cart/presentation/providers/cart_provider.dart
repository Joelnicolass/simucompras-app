import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/cart.dart';
import '../../domain/usecases/add_to_cart.dart';
import '../../domain/usecases/checkout.dart';
import '../../domain/usecases/get_cart.dart';
import '../../domain/usecases/remove_from_cart.dart';
import '../../domain/usecases/update_line_qty.dart';
import '../../../missions/domain/entities/mission.dart';
import '../../../missions/domain/usecases/claim_mission_rewards.dart';
import '../../../missions/domain/usecases/evaluate_missions.dart';
import '../../../missions/presentation/providers/missions_provider.dart';
import '../../../player/presentation/providers/purchase_history_provider.dart';
import '../../../player/presentation/providers/wallet_provider.dart';

part 'cart_provider.g.dart';

@Riverpod(keepAlive: true)
class CartController extends _$CartController {
  @override
  Future<Cart> build() {
    return getIt<GetCart>()();
  }

  Future<void> add(CartLine line) async {
    final cart = await getIt<AddToCart>()(line);
    state = AsyncData(cart);
  }

  Future<void> setQuantity(String productId, int quantity) async {
    final cart = await getIt<UpdateLineQty>()(productId, quantity);
    state = AsyncData(cart);
  }

  Future<void> remove(String productId) async {
    final cart = await getIt<RemoveFromCart>()(productId);
    state = AsyncData(cart);
  }

  Future<CheckoutResult> checkout() async {
    final result = await getIt<Checkout>()();
    state = const AsyncData(Cart());
    ref.invalidate(walletProvider);
    ref.invalidate(purchaseHistoryProvider);

    final events = result.lines
        .map(
          (l) => MissionProgressEvent(
            productId: l.productId,
            title: l.title,
            categoryId: l.categoryId,
            unitPrice: l.unitPrice,
            originalPrice: l.originalUnitPrice,
            isSuperOffer: l.isSuperOffer,
            quantity: l.quantity,
          ),
        )
        .toList();
    await getIt<EvaluateMissions>()(events);
    await getIt<ClaimMissionRewards>()();
    ref.invalidate(missionsProvider);

    return result;
  }
}

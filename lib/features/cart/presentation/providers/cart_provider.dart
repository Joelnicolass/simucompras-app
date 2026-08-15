import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/config/game_config.dart';
import '../../../../core/di/injector.dart';
import '../../../missions/domain/entities/mission.dart';
import '../../../missions/domain/entities/weekly_challenge.dart';
import '../../../missions/domain/usecases/claim_mission_rewards.dart';
import '../../../missions/domain/usecases/claim_weekly_challenge_reward.dart';
import '../../../missions/domain/usecases/evaluate_missions.dart';
import '../../../missions/domain/usecases/evaluate_weekly_challenge.dart';
import '../../../missions/domain/usecases/get_active_missions.dart';
import '../../../missions/presentation/providers/missions_provider.dart';
import '../../../missions/presentation/providers/weekly_challenge_provider.dart';
import '../../../player/domain/usecases/add_player_xp.dart';
import '../../../player/presentation/providers/player_progress_provider.dart';
import '../../../player/presentation/providers/purchase_history_provider.dart';
import '../../../player/presentation/providers/wallet_provider.dart';
import '../../domain/entities/cart.dart';
import '../../domain/entities/checkout_outcome.dart';
import '../../domain/usecases/add_to_cart.dart';
import '../../domain/usecases/checkout.dart';
import '../../domain/usecases/get_cart.dart';
import '../../domain/usecases/remove_from_cart.dart';
import '../../domain/usecases/update_line_qty.dart';

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

  Future<CheckoutOutcome> checkout() async {
    final result = await getIt<Checkout>()();
    state = const AsyncData(Cart());
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
    final claimed = await getIt<ClaimMissionRewards>()();

    final categoryIds = result.lines
        .map((l) => l.categoryId)
        .whereType<String>()
        .where((id) => id.isNotEmpty)
        .toSet();
    final superCount = result.lines.where((l) => l.isSuperOffer).fold<int>(
          0,
          (sum, l) => sum + l.quantity,
        );
    await getIt<EvaluateWeeklyChallenge>()(
      WeeklyProgressEvent(
        categoryIds: categoryIds,
        superOfferCount: superCount,
        spendPesos: result.totalPesos,
      ),
    );
    final weeklyClaimed = await getIt<ClaimWeeklyChallengeReward>()();

    var xpGain = GameConfig.xpPerPurchase;
    xpGain += claimed.length * GameConfig.xpPerMissionClaim;
    if (weeklyClaimed != null) {
      xpGain += GameConfig.xpPerMissionClaim;
    }
    await getIt<AddPlayerXp>()(xpGain);

    await getIt<GetActiveMissions>()();
    ref.invalidate(missionsProvider);
    ref.invalidate(weeklyChallengeControllerProvider);
    ref.invalidate(playerLevelProvider);
    ref.invalidate(walletProvider);

    return CheckoutOutcome(result: result, claimedMissions: claimed);
  }
}

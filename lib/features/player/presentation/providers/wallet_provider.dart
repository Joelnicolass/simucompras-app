import 'dart:math' as math;

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/player_wallet.dart';
import '../../domain/usecases/credit_pesos.dart';
import '../../domain/usecases/ensure_daily_top_up.dart';
import '../../domain/usecases/spend_pesos.dart';

part 'wallet_provider.g.dart';

@Riverpod(keepAlive: true)
class Wallet extends _$Wallet {
  @override
  Future<PlayerWallet> build() {
    return getIt<EnsureDailyTopUp>()();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => getIt<EnsureDailyTopUp>()());
  }

  /// Ajuste de saldo (debug). [delta] > 0 acredita; < 0 debita sin pasar de 0.
  Future<void> adjustBalance(int delta) async {
    if (delta == 0) return;
    if (delta > 0) {
      final wallet = await getIt<CreditPesos>()(delta);
      state = AsyncData(wallet);
      return;
    }

    final current = state.value?.balancePesos ?? 0;
    final amount = math.min(current, -delta);
    if (amount <= 0) return;
    final wallet = await getIt<SpendPesos>()(amount);
    state = AsyncData(wallet);
  }
}

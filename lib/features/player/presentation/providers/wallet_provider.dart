import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/player_wallet.dart';
import '../../domain/usecases/ensure_daily_top_up.dart';

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
}

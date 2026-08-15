import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simucompras/core/config/game_config.dart';
import 'package:simucompras/features/player/data/datasources/player_local_datasource_impl.dart';
import 'package:simucompras/features/player/data/repositories/player_repository_impl.dart';
import 'package:simucompras/features/player/domain/errors/player_failure.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late PlayerRepositoryImpl repo;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    repo = PlayerRepositoryImpl(PlayerLocalDatasourceImpl(prefs));
  });

  test('wallet inicia con saldo de GameConfig', () async {
    final wallet = await repo.getWallet();
    expect(wallet.balancePesos, GameConfig.initialBalancePesos);
  });

  test('daily top-up marca día sin sumar la primera vez', () async {
    final day1 = DateTime.utc(2026, 8, 14);
    final w1 = await repo.ensureDailyTopUp(now: day1);
    expect(w1.balancePesos, GameConfig.initialBalancePesos);
    expect(w1.lastDailyTopUpDate, '2026-08-14');

    final w2 = await repo.ensureDailyTopUp(now: day1);
    expect(w2.balancePesos, GameConfig.initialBalancePesos);
  });

  test('daily top-up suma al cambiar de día', () async {
    await repo.ensureDailyTopUp(now: DateTime.utc(2026, 8, 14));
    final next = await repo.ensureDailyTopUp(now: DateTime.utc(2026, 8, 15));
    expect(
      next.balancePesos,
      GameConfig.initialBalancePesos + GameConfig.dailyTopUpPesos,
    );
  });

  test('spend debita y falla si no alcanza', () async {
    await repo.ensureDailyTopUp(now: DateTime.utc(2026, 8, 14));
    final after = await repo.spendPesos(1000);
    expect(after.balancePesos, GameConfig.initialBalancePesos - 1000);

    expect(
      () => repo.spendPesos(GameConfig.initialBalancePesos),
      throwsA(isA<InsufficientPesos>()),
    );
  });

  test('recordSearch es MRU y respeta max', () async {
    await repo.recordSearch('tv');
    await repo.recordSearch('notebook');
    await repo.recordSearch('tv');
    final history = await repo.getRecentSearches();
    expect(history.first.query, 'tv');
    expect(history.where((e) => e.query == 'tv').length, 1);
  });
}

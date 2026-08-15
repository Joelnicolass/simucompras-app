import '../../../../core/config/game_config.dart';
import '../../domain/datasources/player_local_datasource.dart';
import '../../domain/entities/player_wallet.dart';
import '../../domain/entities/purchase_record.dart';
import '../../domain/entities/search_history_entry.dart';
import '../../domain/errors/player_failure.dart';
import '../../domain/repositories/player_repository.dart';

class PlayerRepositoryImpl implements PlayerRepository {
  PlayerRepositoryImpl(this._local);

  final PlayerLocalDatasource _local;

  static String _dayKey(DateTime date) {
    final utc = date.toUtc();
    final m = utc.month.toString().padLeft(2, '0');
    final d = utc.day.toString().padLeft(2, '0');
    return '${utc.year}-$m-$d';
  }

  @override
  Future<PlayerWallet> getWallet() async {
    try {
      final existing = await _local.readWallet();
      if (existing != null) return existing;
      const initial = PlayerWallet(
        balancePesos: GameConfig.initialBalancePesos,
      );
      await _local.saveWallet(initial);
      return initial;
    } catch (e) {
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<PlayerWallet> ensureDailyTopUp({DateTime? now}) async {
    try {
      final wallet = await getWallet();
      final today = _dayKey(now ?? DateTime.now());
      if (wallet.lastDailyTopUpDate == today) return wallet;

      // Primera vez: marca el día sin sumar (el saldo inicial ya cubre el día 0).
      if (wallet.lastDailyTopUpDate == null) {
        final stamped = wallet.copyWith(lastDailyTopUpDate: today);
        await _local.saveWallet(stamped);
        return stamped;
      }

      final topped = wallet.copyWith(
        balancePesos: wallet.balancePesos + GameConfig.dailyTopUpPesos,
        lastDailyTopUpDate: today,
      );
      await _local.saveWallet(topped);
      return topped;
    } catch (e) {
      if (e is PlayerFailure) rethrow;
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<PlayerWallet> spendPesos(int amount) async {
    try {
      final wallet = await ensureDailyTopUp();
      if (wallet.balancePesos < amount) {
        throw InsufficientPesos(
          requiredPesos: amount,
          availablePesos: wallet.balancePesos,
        );
      }
      final updated = wallet.copyWith(
        balancePesos: wallet.balancePesos - amount,
      );
      await _local.saveWallet(updated);
      return updated;
    } catch (e) {
      if (e is PlayerFailure) rethrow;
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<PlayerWallet> creditPesos(int amount) async {
    try {
      final wallet = await ensureDailyTopUp();
      final updated = wallet.copyWith(
        balancePesos: wallet.balancePesos + amount,
      );
      await _local.saveWallet(updated);
      return updated;
    } catch (e) {
      if (e is PlayerFailure) rethrow;
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<List<SearchHistoryEntry>> getRecentSearches() async {
    try {
      return await _local.readSearchHistory();
    } catch (e) {
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<void> recordSearch(String query) async {
    try {
      final normalized = query.trim().toLowerCase();
      final current = await _local.readSearchHistory();
      final filtered = current
          .where((e) => e.query.trim().toLowerCase() != normalized)
          .toList();
      final updated = [
        SearchHistoryEntry(query: query.trim(), searchedAt: DateTime.now()),
        ...filtered,
      ];
      final trimmed = updated.take(GameConfig.maxStoredSearches).toList();
      await _local.saveSearchHistory(trimmed);
    } catch (e) {
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<void> removeSearch(String query) async {
    try {
      final normalized = query.trim().toLowerCase();
      final current = await _local.readSearchHistory();
      final updated = current
          .where((e) => e.query.trim().toLowerCase() != normalized)
          .toList();
      await _local.saveSearchHistory(updated);
    } catch (e) {
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<List<PurchaseRecord>> getPurchaseHistory() async {
    try {
      return await _local.readPurchaseHistory();
    } catch (e) {
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<void> addPurchase(PurchaseRecord record) async {
    try {
      final current = await _local.readPurchaseHistory();
      final updated = [record, ...current]
          .take(GameConfig.maxPurchaseHistory)
          .toList();
      await _local.savePurchaseHistory(updated);
    } catch (e) {
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<Set<String>> getFavoriteIds() async {
    try {
      return (await _local.readFavoriteIds()).toSet();
    } catch (e) {
      throw PlayerStorageUnavailable(e);
    }
  }

  @override
  Future<bool> toggleFavorite(String productId) async {
    try {
      final id = productId.trim();
      if (id.isEmpty) return false;
      final current = await _local.readFavoriteIds();
      final set = current.toList();
      final exists = set.contains(id);
      if (exists) {
        set.remove(id);
      } else {
        set.insert(0, id);
        while (set.length > GameConfig.maxFavorites) {
          set.removeLast();
        }
      }
      await _local.saveFavoriteIds(set);
      return !exists;
    } catch (e) {
      throw PlayerStorageUnavailable(e);
    }
  }
}

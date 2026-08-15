import '../entities/player_progress.dart';
import '../entities/player_wallet.dart';
import '../entities/purchase_record.dart';
import '../entities/search_history_entry.dart';
import '../entities/sell_result.dart';

abstract interface class PlayerRepository {
  Future<PlayerWallet> getWallet();
  Future<PlayerWallet> ensureDailyTopUp({DateTime? now});
  Future<PlayerWallet> spendPesos(int amount);
  Future<PlayerWallet> creditPesos(int amount);

  Future<List<SearchHistoryEntry>> getRecentSearches();
  Future<void> recordSearch(String query);
  Future<void> removeSearch(String query);

  Future<List<PurchaseRecord>> getPurchaseHistory();
  Future<void> addPurchase(PurchaseRecord record);

  /// Revende 1 unidad de [productId] en la orden [orderId].
  Future<SellResult> sellPurchaseUnit({
    required String orderId,
    required String productId,
  });

  Future<Set<String>> getFavoriteIds();
  Future<bool> toggleFavorite(String productId);

  Future<PlayerProgress> getProgress();
  Future<PlayerProgress> addXp(int amount);
}

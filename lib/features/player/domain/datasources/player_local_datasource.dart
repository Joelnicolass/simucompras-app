import '../entities/player_wallet.dart';
import '../entities/purchase_record.dart';
import '../entities/search_history_entry.dart';

abstract interface class PlayerLocalDatasource {
  Future<PlayerWallet?> readWallet();
  Future<void> saveWallet(PlayerWallet wallet);

  Future<List<SearchHistoryEntry>> readSearchHistory();
  Future<void> saveSearchHistory(List<SearchHistoryEntry> entries);

  Future<List<PurchaseRecord>> readPurchaseHistory();
  Future<void> savePurchaseHistory(List<PurchaseRecord> records);

  Future<List<String>> readFavoriteIds();
  Future<void> saveFavoriteIds(List<String> ids);
}

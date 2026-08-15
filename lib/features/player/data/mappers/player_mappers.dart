import '../../domain/entities/player_progress.dart';
import '../../domain/entities/player_wallet.dart';
import '../../domain/entities/purchase_record.dart';
import '../../domain/entities/search_history_entry.dart';
import '../models/player_progress_model.dart';
import '../models/player_wallet_model.dart';
import '../models/purchase_record_model.dart';
import '../models/search_history_entry_model.dart';

extension PlayerWalletModelMapper on PlayerWalletModel {
  PlayerWallet toEntity() => PlayerWallet(
    balancePesos: balancePesos,
    lastDailyTopUpDate: lastDailyTopUpDate,
  );
}

extension PlayerWalletEntityMapper on PlayerWallet {
  PlayerWalletModel toModel() => PlayerWalletModel(
    balancePesos: balancePesos,
    lastDailyTopUpDate: lastDailyTopUpDate,
  );
}

extension SearchHistoryEntryModelMapper on SearchHistoryEntryModel {
  SearchHistoryEntry toEntity() =>
      SearchHistoryEntry(query: query, searchedAt: searchedAt);
}

extension SearchHistoryEntryEntityMapper on SearchHistoryEntry {
  SearchHistoryEntryModel toModel() =>
      SearchHistoryEntryModel(query: query, searchedAt: searchedAt);
}

extension PurchaseLineModelMapper on PurchaseLineModel {
  PurchaseLine toEntity() => PurchaseLine(
    productId: productId,
    title: title,
    thumbnailUrl: thumbnailUrl,
    unitPrice: unitPrice,
    quantity: quantity,
    isSuperOffer: isSuperOffer,
    categoryId: categoryId,
    soldQuantity: soldQuantity,
  );
}

extension PurchaseLineEntityMapper on PurchaseLine {
  PurchaseLineModel toModel() => PurchaseLineModel(
    productId: productId,
    title: title,
    thumbnailUrl: thumbnailUrl,
    unitPrice: unitPrice,
    quantity: quantity,
    isSuperOffer: isSuperOffer,
    categoryId: categoryId,
    soldQuantity: soldQuantity,
  );
}

extension PurchaseRecordModelMapper on PurchaseRecordModel {
  PurchaseRecord toEntity() => PurchaseRecord(
    id: id,
    purchasedAt: purchasedAt,
    totalPesos: totalPesos,
    lines: lines.map((l) => l.toEntity()).toList(),
  );
}

extension PurchaseRecordEntityMapper on PurchaseRecord {
  PurchaseRecordModel toModel() => PurchaseRecordModel(
    id: id,
    purchasedAt: purchasedAt,
    totalPesos: totalPesos,
    lines: lines.map((l) => l.toModel()).toList(),
  );
}

extension PlayerProgressModelMapper on PlayerProgressModel {
  PlayerProgress toEntity() => PlayerProgress(xp: xp);
}

extension PlayerProgressEntityMapper on PlayerProgress {
  PlayerProgressModel toModel() => PlayerProgressModel(xp: xp);
}

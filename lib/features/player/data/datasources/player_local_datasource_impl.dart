import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/datasources/player_local_datasource.dart';
import '../../domain/entities/player_progress.dart';
import '../../domain/entities/player_wallet.dart';
import '../../domain/entities/purchase_record.dart';
import '../../domain/entities/search_history_entry.dart';
import '../mappers/player_mappers.dart';
import '../models/player_progress_model.dart';
import '../models/player_wallet_model.dart';
import '../models/purchase_record_model.dart';
import '../models/search_history_entry_model.dart';

class PlayerLocalDatasourceImpl implements PlayerLocalDatasource {
  PlayerLocalDatasourceImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _walletKey = 'player_wallet';
  static const _searchesKey = 'player_search_history';
  static const _purchasesKey = 'player_purchase_history';
  static const _favoritesKey = 'player_favorite_ids';
  static const _progressKey = 'player_progress';

  @override
  Future<PlayerWallet?> readWallet() async {
    final raw = _prefs.getString(_walletKey);
    if (raw == null || raw.isEmpty) return null;
    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      return PlayerWalletModel.fromJson(json).toEntity();
    } catch (_) {
      await _prefs.remove(_walletKey);
      return null;
    }
  }

  @override
  Future<void> saveWallet(PlayerWallet wallet) async {
    await _prefs.setString(
      _walletKey,
      jsonEncode(wallet.toModel().toJson()),
    );
  }

  @override
  Future<List<SearchHistoryEntry>> readSearchHistory() async {
    final raw = _prefs.getString(_searchesKey);
    if (raw == null || raw.isEmpty) return const [];
    try {
      final list = jsonDecode(raw) as List<dynamic>;
      return list
          .map(
            (e) => SearchHistoryEntryModel.fromJson(
              e as Map<String, dynamic>,
            ).toEntity(),
          )
          .toList();
    } catch (_) {
      await _prefs.remove(_searchesKey);
      return const [];
    }
  }

  @override
  Future<void> saveSearchHistory(List<SearchHistoryEntry> entries) async {
    final payload = entries.map((e) => e.toModel().toJson()).toList();
    await _prefs.setString(_searchesKey, jsonEncode(payload));
  }

  @override
  Future<List<PurchaseRecord>> readPurchaseHistory() async {
    final raw = _prefs.getString(_purchasesKey);
    if (raw == null || raw.isEmpty) return const [];
    try {
      final list = jsonDecode(raw) as List<dynamic>;
      return list
          .map(
            (e) => PurchaseRecordModel.fromJson(
              e as Map<String, dynamic>,
            ).toEntity(),
          )
          .toList();
    } catch (_) {
      await _prefs.remove(_purchasesKey);
      return const [];
    }
  }

  @override
  Future<void> savePurchaseHistory(List<PurchaseRecord> records) async {
    final payload = records.map((e) => e.toModel().toJson()).toList();
    await _prefs.setString(_purchasesKey, jsonEncode(payload));
  }

  @override
  Future<List<String>> readFavoriteIds() async {
    return _prefs.getStringList(_favoritesKey) ?? const [];
  }

  @override
  Future<void> saveFavoriteIds(List<String> ids) async {
    await _prefs.setStringList(_favoritesKey, ids);
  }

  @override
  Future<PlayerProgress?> readProgress() async {
    final raw = _prefs.getString(_progressKey);
    if (raw == null || raw.isEmpty) return null;
    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      return PlayerProgressModel.fromJson(json).toEntity();
    } catch (_) {
      await _prefs.remove(_progressKey);
      return null;
    }
  }

  @override
  Future<void> saveProgress(PlayerProgress progress) async {
    await _prefs.setString(
      _progressKey,
      jsonEncode(progress.toModel().toJson()),
    );
  }
}

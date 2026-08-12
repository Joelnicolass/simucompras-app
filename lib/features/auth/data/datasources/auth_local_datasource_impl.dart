import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/datasources/auth_local_datasource.dart';
import '../../domain/entities/access_token.dart';
import '../mappers/access_token_mapper.dart';
import '../models/access_token_model.dart';

class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  AuthLocalDatasourceImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _storageKey = 'ml_access_token';

  @override
  Future<AccessToken?> readAccessToken() async {
    final raw = _prefs.getString(_storageKey);
    if (raw == null || raw.isEmpty) return null;

    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      return AccessTokenModel.fromJson(json).toEntity();
    } catch (_) {
      await clearAccessToken();
      return null;
    }
  }

  @override
  Future<void> saveAccessToken(AccessToken token) async {
    final payload = jsonEncode(token.toModel().toJson());
    await _prefs.setString(_storageKey, payload);
  }

  @override
  Future<void> clearAccessToken() async {
    await _prefs.remove(_storageKey);
  }
}

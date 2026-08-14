import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/datasources/cart_local_datasource.dart';
import '../../domain/entities/cart.dart';
import '../mappers/cart_mappers.dart';
import '../models/cart_model.dart';

class CartLocalDatasourceImpl implements CartLocalDatasource {
  CartLocalDatasourceImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _key = 'player_cart';

  @override
  Future<Cart> readCart() async {
    final raw = _prefs.getString(_key);
    if (raw == null || raw.isEmpty) return const Cart();
    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      return CartModel.fromJson(json).toEntity();
    } catch (_) {
      await _prefs.remove(_key);
      return const Cart();
    }
  }

  @override
  Future<void> saveCart(Cart cart) async {
    await _prefs.setString(_key, jsonEncode(cart.toModel().toJson()));
  }
}

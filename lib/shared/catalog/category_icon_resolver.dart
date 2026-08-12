import 'package:flutter/material.dart';

import 'category_icon_catalog.dart';
import 'category_icon_kind.dart';

/// Resuelve el ícono de una categoría por id (preferido) o nombre.
abstract final class CategoryIconResolver {
  static CategoryIconKind resolveKind({
    required String id,
    required String name,
  }) {
    final byId = CategoryIconCatalog.byCategoryId[id];
    if (byId != null) return byId;

    final normalized = _normalize(name);
    if (normalized.isEmpty) return CategoryIconKind.generic;

    for (final rule in CategoryIconCatalog.rules) {
      if (rule.matchesKeywords(normalized)) return rule.kind;
    }

    return CategoryIconKind.generic;
  }

  static IconData resolveIcon({
    required String id,
    required String name,
  }) {
    return resolveKind(id: id, name: name).icon;
  }

  /// Minúsculas + sin tildes, para match estable de keywords.
  static String _normalize(String value) {
    final lower = value.toLowerCase().trim();
    if (lower.isEmpty) return lower;

    const from = 'áàäâéèëêíìïîóòöôúùüûñç';
    const to = 'aaaaeeeeiiiioooouuuunc';
    final buffer = StringBuffer();
    for (final codeUnit in lower.codeUnits) {
      final char = String.fromCharCode(codeUnit);
      final index = from.indexOf(char);
      buffer.write(index >= 0 ? to[index] : char);
    }
    return buffer.toString();
  }
}

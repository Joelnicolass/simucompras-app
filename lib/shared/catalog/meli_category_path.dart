import 'meli_category_ids.dart';

/// Utilidad pura para obtener la categoría raíz MLA a partir del path.
abstract final class MeliCategoryPath {
  /// [leafId] es el id de la oferta; [pathFromRootIds] viene de MeLi
  /// (`path_from_root[].id`), orden raíz → hoja.
  static String? resolveRootId({
    required String? leafId,
    required Iterable<String> pathFromRootIds,
  }) {
    final leaf = leafId?.trim();
    if (leaf != null &&
        leaf.isNotEmpty &&
        MeliCategoryIds.rootIds.contains(leaf)) {
      return leaf;
    }

    for (final id in pathFromRootIds) {
      final trimmed = id.trim();
      if (trimmed.isNotEmpty && MeliCategoryIds.rootIds.contains(trimmed)) {
        return trimmed;
      }
    }

    for (final id in pathFromRootIds) {
      final trimmed = id.trim();
      if (trimmed.isNotEmpty) return trimmed;
    }

    return (leaf != null && leaf.isNotEmpty) ? leaf : null;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/catalog_product.dart';

part 'search_results_state.freezed.dart';

/// Resultados acumulados de una búsqueda paginada (scroll infinito).
@freezed
abstract class SearchResultsState with _$SearchResultsState {
  const factory SearchResultsState({
    required List<CatalogProduct> products,

    /// true si quedan páginas de catálogo por pedir.
    required bool hasMore,
  }) = _SearchResultsState;
}

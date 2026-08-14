// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Búsqueda paginada por texto libre y/o categoría (scroll infinito).
///
/// autoDispose (default): al salir de la pantalla se descarta; cada
/// búsqueda es una instancia distinta del family.

@ProviderFor(SearchResults)
final searchResultsProvider = SearchResultsFamily._();

/// Búsqueda paginada por texto libre y/o categoría (scroll infinito).
///
/// autoDispose (default): al salir de la pantalla se descarta; cada
/// búsqueda es una instancia distinta del family.
final class SearchResultsProvider
    extends $AsyncNotifierProvider<SearchResults, SearchResultsState> {
  /// Búsqueda paginada por texto libre y/o categoría (scroll infinito).
  ///
  /// autoDispose (default): al salir de la pantalla se descarta; cada
  /// búsqueda es una instancia distinta del family.
  SearchResultsProvider._({
    required SearchResultsFamily super.from,
    required ({String? query, String? categoryId}) super.argument,
  }) : super(
         retry: null,
         name: r'searchResultsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchResultsHash();

  @override
  String toString() {
    return r'searchResultsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SearchResults create() => SearchResults();

  @override
  bool operator ==(Object other) {
    return other is SearchResultsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchResultsHash() => r'21e4cd9d9a34c9cec167311ab49f46ff19c7a2e1';

/// Búsqueda paginada por texto libre y/o categoría (scroll infinito).
///
/// autoDispose (default): al salir de la pantalla se descarta; cada
/// búsqueda es una instancia distinta del family.

final class SearchResultsFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchResults,
          AsyncValue<SearchResultsState>,
          SearchResultsState,
          FutureOr<SearchResultsState>,
          ({String? query, String? categoryId})
        > {
  SearchResultsFamily._()
    : super(
        retry: null,
        name: r'searchResultsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Búsqueda paginada por texto libre y/o categoría (scroll infinito).
  ///
  /// autoDispose (default): al salir de la pantalla se descarta; cada
  /// búsqueda es una instancia distinta del family.

  SearchResultsProvider call({String? query, String? categoryId}) =>
      SearchResultsProvider._(
        argument: (query: query, categoryId: categoryId),
        from: this,
      );

  @override
  String toString() => r'searchResultsProvider';
}

/// Búsqueda paginada por texto libre y/o categoría (scroll infinito).
///
/// autoDispose (default): al salir de la pantalla se descarta; cada
/// búsqueda es una instancia distinta del family.

abstract class _$SearchResults extends $AsyncNotifier<SearchResultsState> {
  late final _$args = ref.$arg as ({String? query, String? categoryId});
  String? get query => _$args.query;
  String? get categoryId => _$args.categoryId;

  FutureOr<SearchResultsState> build({String? query, String? categoryId});
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<SearchResultsState>, SearchResultsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SearchResultsState>, SearchResultsState>,
              AsyncValue<SearchResultsState>,
              Object?,
              Object?
            >;
    return element.handleCreate(
      ref,
      () => build(query: _$args.query, categoryId: _$args.categoryId),
    );
  }
}

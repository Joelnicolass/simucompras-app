// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchHistory)
final searchHistoryProvider = SearchHistoryProvider._();

final class SearchHistoryProvider
    extends $AsyncNotifierProvider<SearchHistory, List<SearchHistoryEntry>> {
  SearchHistoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchHistoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchHistoryHash();

  @$internal
  @override
  SearchHistory create() => SearchHistory();
}

String _$searchHistoryHash() => r'10482893c45d8e6670862c011cecf1b9ac97907c';

abstract class _$SearchHistory
    extends $AsyncNotifier<List<SearchHistoryEntry>> {
  FutureOr<List<SearchHistoryEntry>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<SearchHistoryEntry>>,
              List<SearchHistoryEntry>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<SearchHistoryEntry>>,
                List<SearchHistoryEntry>
              >,
              AsyncValue<List<SearchHistoryEntry>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

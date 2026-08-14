import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/search_history_entry.dart';
import '../../domain/usecases/get_recent_searches.dart';
import '../../domain/usecases/record_search.dart';
import '../../domain/usecases/remove_search.dart';

part 'search_history_provider.g.dart';

@Riverpod(keepAlive: true)
class SearchHistory extends _$SearchHistory {
  @override
  Future<List<SearchHistoryEntry>> build() {
    return getIt<GetRecentSearches>()();
  }

  Future<void> record(String query) async {
    await getIt<RecordSearch>()(query);
    ref.invalidateSelf();
    await future;
  }

  Future<void> remove(String query) async {
    await getIt<RemoveSearch>()(query);
    ref.invalidateSelf();
    await future;
  }
}

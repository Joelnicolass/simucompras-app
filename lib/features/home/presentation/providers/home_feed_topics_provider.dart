import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../catalog/presentation/providers/catalog_browse_seed_provider.dart';
import '../../../player/presentation/providers/search_history_provider.dart';
import '../home_feed_queries.dart';

part 'home_feed_topics_provider.g.dart';

@riverpod
(String, String) homeFeedTopics(Ref ref) {
  final seed = ref.watch(catalogBrowseSeedProvider);
  final history = ref.watch(searchHistoryProvider).value ?? const [];
  return HomeFeedQueries.pairFor(
    seed: seed,
    historyQueries: history.map((e) => e.query).toList(),
  );
}

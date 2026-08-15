import 'dart:math';

import '../../../../core/config/game_config.dart';

/// Resuelve los topics de las secciones de productos de la home.
abstract final class HomeFeedQueries {
  /// Dos queries: prioriza historial; completa con fallbacks + seed.
  static (String first, String second) pairFor({
    required int seed,
    List<String> historyQueries = const [],
  }) {
    final fromHistory = <String>[];
    final seen = <String>{};
    for (final raw in historyQueries) {
      final q = raw.trim().toLowerCase();
      if (q.isEmpty || !seen.add(q)) continue;
      fromHistory.add(raw.trim());
      if (fromHistory.length >= GameConfig.homeTopicsFromHistory) break;
    }

    const topics = GameConfig.fallbackTopics;
    final random = Random(seed);

    String pickFallback(Set<String> exclude) {
      if (topics.isEmpty) return 'smart tv';
      for (var i = 0; i < 20; i++) {
        final candidate = topics[random.nextInt(topics.length)];
        if (!exclude.contains(candidate.toLowerCase())) return candidate;
      }
      return topics[random.nextInt(topics.length)];
    }

    final exclude = fromHistory.map((e) => e.toLowerCase()).toSet();
    final first = fromHistory.isNotEmpty
        ? fromHistory[0]
        : pickFallback(exclude);
    exclude.add(first.toLowerCase());
    final second = fromHistory.length > 1
        ? fromHistory[1]
        : pickFallback(exclude);

    return (first, second);
  }
}

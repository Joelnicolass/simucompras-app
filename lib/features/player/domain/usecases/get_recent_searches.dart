import '../entities/search_history_entry.dart';
import '../repositories/player_repository.dart';

class GetRecentSearches {
  const GetRecentSearches(this._repository);
  final PlayerRepository _repository;

  Future<List<SearchHistoryEntry>> call() => _repository.getRecentSearches();
}

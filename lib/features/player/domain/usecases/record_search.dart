import '../repositories/player_repository.dart';

class RecordSearch {
  const RecordSearch(this._repository);
  final PlayerRepository _repository;

  Future<void> call(String query) {
    final trimmed = query.trim();
    if (trimmed.isEmpty) return Future.value();
    return _repository.recordSearch(trimmed);
  }
}

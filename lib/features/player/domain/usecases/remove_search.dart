import '../repositories/player_repository.dart';

class RemoveSearch {
  const RemoveSearch(this._repository);
  final PlayerRepository _repository;

  Future<void> call(String query) {
    final trimmed = query.trim();
    if (trimmed.isEmpty) return Future.value();
    return _repository.removeSearch(trimmed);
  }
}

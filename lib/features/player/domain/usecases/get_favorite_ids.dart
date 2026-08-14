import '../repositories/player_repository.dart';

class GetFavoriteIds {
  const GetFavoriteIds(this._repository);
  final PlayerRepository _repository;

  Future<Set<String>> call() => _repository.getFavoriteIds();
}

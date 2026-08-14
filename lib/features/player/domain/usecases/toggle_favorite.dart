import '../repositories/player_repository.dart';

class ToggleFavorite {
  const ToggleFavorite(this._repository);
  final PlayerRepository _repository;

  Future<bool> call(String productId) => _repository.toggleFavorite(productId);
}

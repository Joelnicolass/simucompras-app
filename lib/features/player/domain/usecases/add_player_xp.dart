import '../entities/player_progress.dart';
import '../repositories/player_repository.dart';

class AddPlayerXp {
  const AddPlayerXp(this._repository);
  final PlayerRepository _repository;

  Future<PlayerProgress> call(int amount) => _repository.addXp(amount);
}

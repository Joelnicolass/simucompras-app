import '../entities/player_progress.dart';
import '../repositories/player_repository.dart';

class GetPlayerProgress {
  const GetPlayerProgress(this._repository);
  final PlayerRepository _repository;

  Future<PlayerProgress> call() => _repository.getProgress();
}

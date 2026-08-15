import '../entities/player_wallet.dart';
import '../repositories/player_repository.dart';

class EnsureDailyTopUp {
  const EnsureDailyTopUp(this._repository);
  final PlayerRepository _repository;

  Future<PlayerWallet> call({DateTime? now}) =>
      _repository.ensureDailyTopUp(now: now);
}

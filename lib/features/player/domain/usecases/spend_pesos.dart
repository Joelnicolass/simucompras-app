import '../entities/player_wallet.dart';
import '../errors/player_failure.dart';
import '../repositories/player_repository.dart';

class SpendPesos {
  const SpendPesos(this._repository);
  final PlayerRepository _repository;

  Future<PlayerWallet> call(int amount) {
    if (amount <= 0) {
      throw const PlayerStorageUnavailable('amount debe ser > 0');
    }
    return _repository.spendPesos(amount);
  }
}

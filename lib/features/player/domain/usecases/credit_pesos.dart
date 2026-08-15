import '../entities/player_wallet.dart';
import '../repositories/player_repository.dart';

class CreditPesos {
  const CreditPesos(this._repository);
  final PlayerRepository _repository;

  Future<PlayerWallet> call(int amount) {
    if (amount <= 0) return _repository.getWallet();
    return _repository.creditPesos(amount);
  }
}

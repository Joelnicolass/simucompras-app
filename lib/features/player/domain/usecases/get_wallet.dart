import '../entities/player_wallet.dart';
import '../repositories/player_repository.dart';

class GetWallet {
  const GetWallet(this._repository);
  final PlayerRepository _repository;

  Future<PlayerWallet> call() => _repository.getWallet();
}

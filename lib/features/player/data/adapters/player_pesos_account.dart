import '../../../cart/domain/repositories/pesos_account.dart';
import '../../domain/repositories/player_repository.dart';

/// Adapta [PlayerRepository] al contrato de carrito [PesosAccount].
class PlayerPesosAccount implements PesosAccount {
  PlayerPesosAccount(this._player);

  final PlayerRepository _player;

  @override
  Future<int> availablePesos() async {
    final wallet = await _player.ensureDailyTopUp();
    return wallet.balancePesos;
  }

  @override
  Future<void> debit(int amount) => _player.spendPesos(amount);
}

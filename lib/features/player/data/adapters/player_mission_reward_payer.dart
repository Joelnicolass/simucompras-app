import '../../../missions/domain/repositories/mission_reward_payer.dart';
import '../../domain/repositories/player_repository.dart';

class PlayerMissionRewardPayer implements MissionRewardPayer {
  PlayerMissionRewardPayer(this._player);

  final PlayerRepository _player;

  @override
  Future<void> pay(int pesos) => _player.creditPesos(pesos);
}

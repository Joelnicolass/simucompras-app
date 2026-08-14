import '../entities/mission.dart';
import '../repositories/mission_reward_payer.dart';
import '../repositories/missions_repository.dart';

class ClaimMissionRewards {
  const ClaimMissionRewards(this._repository, this._payer);

  final MissionsRepository _repository;
  final MissionRewardPayer _payer;

  /// Marca completed→claimed y acredita pesos. Devuelve misiones cobradas.
  Future<List<Mission>> call() async {
    final claimed = await _repository.claimCompleted();
    var total = 0;
    for (final m in claimed) {
      total += m.rewardPesos;
    }
    if (total > 0) await _payer.pay(total);
    return claimed;
  }
}

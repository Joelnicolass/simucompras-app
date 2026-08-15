import '../entities/weekly_challenge.dart';
import '../repositories/mission_reward_payer.dart';
import '../repositories/weekly_challenge_repository.dart';

class ClaimWeeklyChallengeReward {
  const ClaimWeeklyChallengeReward(this._repository, this._payer);

  final WeeklyChallengeRepository _repository;
  final MissionRewardPayer _payer;

  Future<WeeklyChallenge?> call() async {
    final claimed = await _repository.claimIfCompleted();
    if (claimed == null) return null;
    await _payer.pay(claimed.rewardPesos);
    return claimed;
  }
}

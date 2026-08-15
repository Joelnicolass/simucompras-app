import '../entities/weekly_challenge.dart';
import '../repositories/weekly_challenge_repository.dart';

class GetWeeklyChallenge {
  const GetWeeklyChallenge(this._repository);
  final WeeklyChallengeRepository _repository;

  Future<WeeklyChallenge> call({DateTime? now}) =>
      _repository.ensureCurrent(now: now);
}

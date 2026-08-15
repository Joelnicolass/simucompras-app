import '../entities/weekly_challenge.dart';
import '../repositories/weekly_challenge_repository.dart';

class EvaluateWeeklyChallenge {
  const EvaluateWeeklyChallenge(this._repository);
  final WeeklyChallengeRepository _repository;

  Future<WeeklyChallenge> call(WeeklyProgressEvent event) =>
      _repository.evaluate(event);
}

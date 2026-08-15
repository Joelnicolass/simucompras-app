import '../entities/weekly_challenge.dart';

abstract interface class WeeklyChallengeRepository {
  Future<WeeklyChallenge> ensureCurrent({DateTime? now});
  Future<WeeklyChallenge> evaluate(WeeklyProgressEvent event);
  Future<WeeklyChallenge?> claimIfCompleted();
}

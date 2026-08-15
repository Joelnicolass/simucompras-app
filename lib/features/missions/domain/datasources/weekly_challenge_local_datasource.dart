import '../entities/weekly_challenge.dart';

abstract interface class WeeklyChallengeLocalDatasource {
  Future<WeeklyChallenge?> read();
  Future<void> save(WeeklyChallenge challenge);
  Future<void> clear();
}

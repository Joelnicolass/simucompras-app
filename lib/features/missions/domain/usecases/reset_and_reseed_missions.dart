import '../entities/mission.dart';
import '../repositories/missions_repository.dart';

class ResetAndReseedMissions {
  const ResetAndReseedMissions(this._repository);
  final MissionsRepository _repository;

  Future<List<Mission>> call({DateTime? now}) =>
      _repository.resetAndReseed(now: now);
}

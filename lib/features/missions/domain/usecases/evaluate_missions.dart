import '../entities/mission.dart';
import '../repositories/missions_repository.dart';

class EvaluateMissions {
  const EvaluateMissions(this._repository);
  final MissionsRepository _repository;

  Future<List<Mission>> call(List<MissionProgressEvent> events) =>
      _repository.evaluatePurchase(events);
}

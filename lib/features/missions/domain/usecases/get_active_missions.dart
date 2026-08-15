import '../entities/mission.dart';
import '../repositories/missions_repository.dart';

class GetActiveMissions {
  const GetActiveMissions(this._repository);
  final MissionsRepository _repository;

  Future<List<Mission>> call() async {
    await _repository.ensureSeeded();
    return _repository.getActiveMissions();
  }
}

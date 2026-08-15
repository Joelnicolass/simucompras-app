import '../entities/mission.dart';

abstract interface class MissionsLocalDatasource {
  Future<List<Mission>> readMissions();
  Future<void> saveMissions(List<Mission> missions);
}

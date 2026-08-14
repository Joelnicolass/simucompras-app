import '../entities/mission.dart';

abstract interface class MissionsRepository {
  Future<List<Mission>> getActiveMissions();
  Future<List<Mission>> ensureSeeded({DateTime? now});
  Future<List<Mission>> evaluatePurchase(List<MissionProgressEvent> events);
  Future<List<Mission>> claimCompleted();
}

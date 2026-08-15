import '../entities/mission.dart';

abstract interface class MissionsRepository {
  Future<List<Mission>> getActiveMissions();
  Future<List<Mission>> ensureSeeded({DateTime? now});
  Future<List<Mission>> evaluatePurchase(List<MissionProgressEvent> events);
  Future<List<Mission>> claimCompleted();

  /// Borra misiones y siembra un lote nuevo al azar (debug / QA).
  Future<List<Mission>> resetAndReseed({DateTime? now});
}

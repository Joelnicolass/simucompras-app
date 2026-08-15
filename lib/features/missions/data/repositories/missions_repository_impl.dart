import '../../../../core/config/game_config.dart';
import '../../domain/datasources/missions_local_datasource.dart';
import '../../domain/entities/mission.dart';
import '../../domain/errors/missions_failure.dart';
import '../../domain/repositories/missions_repository.dart';
import '../mission_catalog.dart';

class MissionsRepositoryImpl implements MissionsRepository {
  MissionsRepositoryImpl(this._local);

  final MissionsLocalDatasource _local;

  @override
  Future<List<Mission>> getActiveMissions() async {
    try {
      final all = await _local.readMissions();
      return all
          .where(
            (m) =>
                m.status == MissionStatus.active ||
                m.status == MissionStatus.completed,
          )
          .toList();
    } catch (e) {
      throw MissionsStorageUnavailable(e);
    }
  }

  @override
  Future<List<Mission>> ensureSeeded({DateTime? now}) async {
    try {
      final existing = await _local.readMissions();
      final open = existing
          .where((m) => m.status != MissionStatus.claimed)
          .toList();
      if (open.length >= GameConfig.activeMissionSlots) {
        return open;
      }

      final stamp = (now ?? DateTime.now()).millisecondsSinceEpoch;
      final needed = GameConfig.activeMissionSlots - open.length;
      final excludeTitles = open.map((m) => m.title).toSet();
      final fresh = MissionCatalog.pick(
        stamp: stamp,
        count: needed,
        excludeTitles: excludeTitles,
      );
      final seeded = [...open, ...fresh];

      // No retenemos claimed: ya cobradas; libera slots limpios.
      await _local.saveMissions(seeded);
      return seeded;
    } catch (e) {
      throw MissionsStorageUnavailable(e);
    }
  }

  @override
  Future<List<Mission>> evaluatePurchase(
    List<MissionProgressEvent> events,
  ) async {
    try {
      await ensureSeeded();
      final all = await _local.readMissions();
      final newlyCompleted = <Mission>[];
      final updated = all.map((mission) {
        if (mission.status != MissionStatus.active) return mission;
        if (!_matches(mission, events)) return mission;
        final done = _withStatus(mission, MissionStatus.completed);
        newlyCompleted.add(done);
        return done;
      }).toList();
      await _local.saveMissions(updated);
      return newlyCompleted;
    } catch (e) {
      throw MissionsStorageUnavailable(e);
    }
  }

  @override
  Future<List<Mission>> claimCompleted() async {
    try {
      final all = await _local.readMissions();
      final toClaim = all
          .where((m) => m.status == MissionStatus.completed)
          .toList();
      if (toClaim.isEmpty) return const [];

      final updated = all.map((m) {
        if (m.status == MissionStatus.completed) {
          return _withStatus(m, MissionStatus.claimed);
        }
        return m;
      }).toList();
      // Solo persistimos no-claimed; ensureSeeded llenará slots.
      final remaining =
          updated.where((m) => m.status != MissionStatus.claimed).toList();
      await _local.saveMissions(remaining);
      return toClaim;
    } catch (e) {
      throw MissionsStorageUnavailable(e);
    }
  }

  @override
  Future<List<Mission>> resetAndReseed({DateTime? now}) async {
    try {
      final stamp = (now ?? DateTime.now()).millisecondsSinceEpoch;
      final fresh = MissionCatalog.pick(
        stamp: stamp,
        count: GameConfig.activeMissionSlots,
        excludeTitles: const {},
      );
      await _local.saveMissions(fresh);
      return fresh;
    } catch (e) {
      throw MissionsStorageUnavailable(e);
    }
  }

  bool _matches(Mission mission, List<MissionProgressEvent> events) {
    return switch (mission) {
      // Las misiones guardan raíz (ej. MLA1051). El evento ya debería traer
      // la raíz resuelta en checkout; igualdad exacta.
      BuyCategoryMission(:final categoryId) => events.any(
        (e) => e.categoryId != null && e.categoryId == categoryId,
      ),
      FindSuperOfferMission() => events.any((e) => e.isSuperOffer),
      BuyExpensiveMission(:final minPrice) => events.any(
        (e) => e.unitPrice >= minPrice,
      ),
      BuyCheapDealMission(:final minDiscount) => events.any((e) {
        final original = e.originalPrice;
        if (original == null || original <= e.unitPrice) {
          return e.isSuperOffer;
        }
        final discount = (original - e.unitPrice) / original;
        return discount >= minDiscount;
      }),
      BuyKeywordMission(:final keyword) => events.any(
        (e) => e.title.toLowerCase().contains(keyword.toLowerCase()),
      ),
    };
  }

  Mission _withStatus(Mission mission, MissionStatus status) {
    return switch (mission) {
      BuyCategoryMission() => mission.copyWith(status: status),
      FindSuperOfferMission() => mission.copyWith(status: status),
      BuyExpensiveMission() => mission.copyWith(status: status),
      BuyCheapDealMission() => mission.copyWith(status: status),
      BuyKeywordMission() => mission.copyWith(status: status),
    };
  }
}

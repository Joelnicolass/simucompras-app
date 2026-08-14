import '../../../../core/config/game_config.dart';
import '../../domain/datasources/missions_local_datasource.dart';
import '../../domain/entities/mission.dart';
import '../../domain/errors/missions_failure.dart';
import '../../domain/repositories/missions_repository.dart';

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
      final fresh = _defaultMissions(stamp).take(needed).toList();
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
      final updated = all.map((mission) {
        if (mission.status != MissionStatus.active) return mission;
        return _matches(mission, events)
            ? _withStatus(mission, MissionStatus.completed)
            : mission;
      }).toList();
      await _local.saveMissions(updated);
      return updated
          .where((m) => m.status == MissionStatus.completed)
          .toList();
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
      await _local.saveMissions(updated);
      return toClaim;
    } catch (e) {
      throw MissionsStorageUnavailable(e);
    }
  }

  bool _matches(Mission mission, List<MissionProgressEvent> events) {
    return switch (mission) {
      BuyCategoryMission(:final categoryId) => events.any(
        (e) => e.categoryId == categoryId,
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

  /// Catálogo seed de objetivos. **Acá se agregan misiones nuevas**
  /// (no en el datasource: ese solo persiste JSON).
  ///
  /// Se invoca desde [ensureSeeded] cuando faltan slots activos.
  List<Mission> _defaultMissions(int stamp) => [
    Mission.findSuperOffer(
      id: 'mission_super_offer_$stamp',
      title: 'Cazador de ofertas',
      description: 'Comprá un producto con súper oferta.',
      rewardPesos: GameConfig.missionRewardPesos,
    ),
    Mission.buyExpensive(
      id: 'mission_expensive_$stamp',
      minPrice: GameConfig.missionBuyExpensiveMin,
      title: 'Gran compra',
      description:
          'Comprá algo de al menos \$${GameConfig.missionBuyExpensiveMin}.',
      rewardPesos: GameConfig.missionRewardPesos,
    ),
    Mission.buyCheapDeal(
      id: 'mission_cheap_deal_$stamp',
      minDiscount: GameConfig.missionCheapDealMinDiscount,
      title: 'Remate',
      description: 'Comprá un producto con descuento fuerte.',
      rewardPesos: GameConfig.missionRewardPesos,
    ),
    Mission.buyKeyword(
      id: 'mission_keyword_tv_$stamp',
      keyword: 'tv',
      title: 'Noche de series',
      description: 'Comprá un producto relacionado a TV.',
      rewardPesos: GameConfig.missionRewardPesos,
    ),
  ];
}

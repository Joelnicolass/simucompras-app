import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simucompras/features/missions/data/datasources/missions_local_datasource_impl.dart';
import 'package:simucompras/features/missions/data/mission_catalog.dart';
import 'package:simucompras/features/missions/data/repositories/missions_repository_impl.dart';
import 'package:simucompras/features/missions/domain/entities/mission.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('evaluatePurchase completa findSuperOffer', () async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final local = MissionsLocalDatasourceImpl(prefs);
    final repo = MissionsRepositoryImpl(local);

    await local.saveMissions([
      const Mission.findSuperOffer(
        id: 'mission_super_offer_test',
        title: 'Cazador de ofertas',
        description: 'Comprá un producto con súper oferta.',
        rewardPesos: 25_000,
      ),
    ]);

    final completed = await repo.evaluatePurchase([
      const MissionProgressEvent(
        productId: 'p1',
        title: 'TV 55',
        unitPrice: 100000,
        originalPrice: 200000,
        isSuperOffer: true,
        quantity: 1,
      ),
    ]);

    expect(
      completed.any((m) => m is FindSuperOfferMission),
      isTrue,
    );
  });

  test('MissionCatalog tiene al menos 50 plantillas', () {
    expect(MissionCatalog.all(1).length, greaterThanOrEqualTo(50));
  });
}

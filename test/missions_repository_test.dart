import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simucompras/features/missions/data/datasources/missions_local_datasource_impl.dart';
import 'package:simucompras/features/missions/data/repositories/missions_repository_impl.dart';
import 'package:simucompras/features/missions/domain/entities/mission.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('evaluatePurchase completa findSuperOffer', () async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final repo = MissionsRepositoryImpl(MissionsLocalDatasourceImpl(prefs));

    await repo.ensureSeeded(now: DateTime.utc(2026, 8, 14));
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
}

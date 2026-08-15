import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simucompras/features/cart/data/datasources/cart_local_datasource_impl.dart';
import 'package:simucompras/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:simucompras/features/cart/domain/entities/cart.dart';
import 'package:simucompras/features/cart/domain/usecases/checkout.dart';
import 'package:simucompras/features/player/data/adapters/player_pesos_account.dart';
import 'package:simucompras/features/player/data/adapters/player_purchase_recorder.dart';
import 'package:simucompras/features/player/data/datasources/player_local_datasource_impl.dart';
import 'package:simucompras/features/player/data/repositories/player_repository_impl.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('checkout debita pesos y vacía carrito', () async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final player = PlayerRepositoryImpl(PlayerLocalDatasourceImpl(prefs));
    final cartRepo = CartRepositoryImpl(CartLocalDatasourceImpl(prefs));

    await player.ensureDailyTopUp(now: DateTime.utc(2026, 8, 14));
    await cartRepo.addLine(
      const CartLine(
        productId: 'p1',
        title: 'Test',
        unitPrice: 1500,
        quantity: 2,
      ),
    );

    final checkout = Checkout(
      cartRepo,
      PlayerPesosAccount(player),
      PlayerPurchaseRecorder(player),
    );

    final result = await checkout();
    expect(result.totalPesos, 3000);
    expect((await cartRepo.getCart()).isEmpty, isTrue);
    expect((await player.getWallet()).balancePesos, 1_000_000 - 3000);
    expect((await player.getPurchaseHistory()).length, 1);
  });
}

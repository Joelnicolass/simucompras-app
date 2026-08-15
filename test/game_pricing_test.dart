import 'package:flutter_test/flutter_test.dart';
import 'package:simucompras/core/config/game_config.dart';
import 'package:simucompras/shared/game/game_pricing.dart';
import 'package:simucompras/shared/utils/reference_price.dart';

void main() {
  group('ReferencePrice', () {
    test('es estable por seed', () {
      final a = ReferencePrice.stableFor('MLA123');
      final b = ReferencePrice.stableFor('MLA123');
      expect(a, b);
    });

    test('queda dentro del rango de GameConfig (aprox)', () {
      for (var i = 0; i < 50; i++) {
        final price = ReferencePrice.stableFor('id-$i');
        expect(price, greaterThanOrEqualTo(GameConfig.priceMin * 0.5));
        expect(price, lessThanOrEqualTo(GameConfig.priceMax * 1.1));
      }
    });
  });

  group('GamePricing', () {
    test('usa offerPrice cuando existe', () {
      final price = GamePricing.resolve(
        productId: 'MLA1',
        offerPrice: 99999,
        now: DateTime(2099, 1, 1),
      );
      // Sin súper oferta forzamos día lejano; puede o no aplicar.
      // Si no es super, amount == 99999.
      if (!price.isSuperOffer) {
        expect(price.amount, 99999);
        expect(price.isSimulated, isFalse);
      } else {
        expect(price.amount, lessThan(99999));
        expect(price.isSuperOffer, isTrue);
      }
    });

    test('sin oferta marca isSimulated', () {
      final price = GamePricing.resolve(productId: 'MLA-sim');
      expect(price.isSimulated, isTrue);
      expect(price.amount, greaterThan(0));
    });
  });

  group('HomeFeedQueries via GameConfig', () {
    test('fallbackTopics no vacío', () {
      expect(GameConfig.fallbackTopics, isNotEmpty);
      expect(GameConfig.initialBalancePesos, 1000000);
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:simucompras/main.dart';

void main() {
  testWidgets('muestra el branding de SimuCompras', (tester) async {
    await tester.pumpWidget(const SimuComprasApp());

    expect(find.text('SimuCompras'), findsOneWidget);
    expect(find.text('Simulá la compra. Calmás el impulso.'), findsOneWidget);
  });
}

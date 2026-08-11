import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simucompras/core/di/injector.dart';
import 'package:simucompras/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    await getIt.reset();
    await setupInjector();
  });

  tearDown(() async {
    await getIt.reset();
  });

  testWidgets('muestra loading al pedir el token', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: SimuComprasApp()),
    );

    expect(find.text('Obteniendo token…'), findsOneWidget);
  });
}

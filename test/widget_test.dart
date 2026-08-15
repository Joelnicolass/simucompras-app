import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simucompras/core/di/injector.dart';
import 'package:simucompras/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await getIt.reset();
    await setupInjector();
  });

  tearDown(() async {
    await getIt.reset();
  });

  testWidgets('home muestra preparación de sesión', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: SimuComprasApp()),
    );

    expect(find.text('Preparando sesión…'), findsOneWidget);
  });
}

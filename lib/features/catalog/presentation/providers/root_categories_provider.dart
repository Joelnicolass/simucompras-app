import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/category.dart';
import '../../domain/usecases/get_root_categories.dart';
import '../../../auth/presentation/providers/session_access_token_provider.dart';

part 'root_categories_provider.g.dart';

/// Categorías raíz MLA. Espera sesión válida antes de llamar a MeLi.
///
/// keepAlive: el carrusel de la home se desmonta al scrollear; sin esto el
/// provider se descarta y repite la request.
@Riverpod(keepAlive: true)
Future<List<Category>> rootCategories(Ref ref) async {
  await ref.watch(sessionAccessTokenProvider.future);
  return getIt<GetRootCategories>()();
}

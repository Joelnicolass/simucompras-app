import 'dart:io';

import 'package:simucompras/core/config/app_config.dart';
import 'package:simucompras/core/network/api_clients.dart';
import 'package:simucompras/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:simucompras/features/auth/domain/entities/access_token.dart';
import 'package:simucompras/features/auth/domain/repositories/auth_repository.dart';
import 'package:simucompras/features/catalog/data/datasources/catalog_remote_datasource_impl.dart';
import 'package:simucompras/features/catalog/data/repositories/catalog_repository_impl.dart';
import 'package:simucompras/features/catalog/domain/entities/catalog_product.dart';
import 'package:simucompras/features/catalog/domain/usecases/search_products.dart';

/// Prueba en vivo de searchProducts con ofertas (sin Flutter bindings).
///
/// ```sh
/// cd app && fvm dart run tool/catalog_search_probe.dart
/// ```
Future<void> main() async {
  final authClient = AuthApiClient(baseUrl: AppConfig.authApiBaseUrl);
  final mlClient = MercadoLibreApiClient(
    baseUrl: AppConfig.mercadoLibreApiBaseUrl,
  );

  final repo = CatalogRepositoryImpl(
    CatalogRemoteDatasourceImpl(mlClient),
    _RemoteOnlyAuthRepository(AuthRemoteDatasourceImpl(authClient)),
  );
  final search = SearchProducts(repo);

  try {
    for (final query in ['smart tv', 'heladera', 'iphone']) {
      final sw = Stopwatch()..start();
      final page = await search(
        ProductSearchParams(query: query, limit: 6, includeOffers: true),
      );
      sw.stop();
      stdout.writeln(
        'q="$query" -> ${page.results.length} con precio '
        '(${sw.elapsedMilliseconds}ms, total catálogo=${page.total})',
      );
      for (final p in page.results) {
        stdout.writeln(
          '   ${p.id} | ${p.title.substring(0, p.title.length.clamp(0, 45))}'
          ' | ${p.currencyId} ${p.price}',
        );
      }
    }
  } finally {
    authClient.close();
    mlClient.close();
  }
}

class _RemoteOnlyAuthRepository implements AuthRepository {
  _RemoteOnlyAuthRepository(this._remote);

  final AuthRemoteDatasourceImpl _remote;
  AccessToken? _cached;

  @override
  Future<AccessToken> getAccessToken() async {
    final cached = _cached;
    if (cached != null && cached.isValid) return cached;
    return _cached = await _remote.fetchAccessToken();
  }
}

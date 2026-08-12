import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:simucompras/core/config/app_config.dart';
import 'package:simucompras/core/network/api_clients.dart';
import 'package:simucompras/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:simucompras/features/catalog/data/datasources/catalog_remote_datasource_impl.dart';
import 'package:simucompras/features/catalog/domain/entities/catalog_product.dart';

/// Smoke de red real (sin flutter_test, que intercepta HttpClient).
///
/// ```sh
/// cd app && fvm dart run tool/catalog_api_smoke.dart
/// ```
Future<void> main() async {
  stdout.writeln('== Catalog API smoke ==');
  stdout.writeln('Auth: ${AppConfig.authApiBaseUrl}');
  stdout.writeln('MeLi: ${AppConfig.mercadoLibreApiBaseUrl}');
  stdout.writeln('');

  final authClient = AuthApiClient(baseUrl: AppConfig.authApiBaseUrl);
  final mlClient = MercadoLibreApiClient(
    baseUrl: AppConfig.mercadoLibreApiBaseUrl,
  );
  final authRemote = AuthRemoteDatasourceImpl(authClient);
  final catalogRemote = CatalogRemoteDatasourceImpl(mlClient);

  try {
    final token = await authRemote.fetchAccessToken();
    final header = token.authorizationHeader;
    stdout.writeln('✓ token ok (expires_in=${token.expiresIn}s)');

    final roots = await catalogRemote.getRootCategories(
      authorizationHeader: header,
      siteId: AppConfig.mercadoLibreSiteId,
    );
    stdout.writeln('✓ root categories: ${roots.length} (ej: ${roots.first.name})');

    final category = await catalogRemote.getCategoryById(
      authorizationHeader: header,
      categoryId: 'MLA1055',
    );
    stdout.writeln(
      '✓ category MLA1055: ${category.name} '
      '(hijos=${category.children.length})',
    );

    final page = await catalogRemote.searchProducts(
      authorizationHeader: header,
      siteId: AppConfig.mercadoLibreSiteId,
      keywords: 'zapatillas nike',
      limit: 5,
      offset: 0,
    );
    stdout.writeln(
      '✓ search "${page.query}": total=${page.total}, '
      'results=${page.results.length}',
    );
    for (final p in page.results.take(3)) {
      stdout.writeln('  - ${p.id} | ${p.title}');
    }

    final productId = page.results.first.id;
    final product = await catalogRemote.getProductById(
      authorizationHeader: header,
      productId: productId,
    );
    stdout.writeln(
      '✓ product $productId: ${product.title} '
      '(pics=${product.pictureUrls.length})',
    );

    final offers = await catalogRemote.getProductOffers(
      authorizationHeader: header,
      productId: productId,
    );
    if (offers.isEmpty) {
      stdout.writeln(
        '· offers: 0 (común en catálogo sin buy-box; precios opcionales)',
      );
    } else {
      final best = offers.first;
      stdout.writeln(
        '✓ best offer: ${best.itemId} '
        '${best.currencyId} ${best.price} '
        'freeShip=${best.freeShipping}',
      );
    }

    // Producto histórico con ofertas verificadas en el setup.
    final knownWithOffers = 'MLA72057588';
    final knownOffers = await catalogRemote.getProductOffers(
      authorizationHeader: header,
      productId: knownWithOffers,
    );
    stdout.writeln(
      '✓ product $knownWithOffers offers: ${knownOffers.length}'
      '${knownOffers.isEmpty ? '' : ' best=${knownOffers.first.price}'}',
    );

    // /sites/MLA/search sigue 403 con client_credentials: lo documentamos.
    final blocked = await http.get(
      Uri.parse(
        '${AppConfig.mercadoLibreApiBaseUrl}/sites/'
        '${AppConfig.mercadoLibreSiteId}/search?q=iphone&limit=1',
      ),
      headers: {'Authorization': header},
    );
    stdout.writeln(
      '· legacy search /sites/.../search → HTTP ${blocked.statusCode} '
      '(esperado 403 con app token; usamos /products/search)',
    );
    if (blocked.statusCode != 403 && blocked.statusCode != 200) {
      stdout.writeln('  body: ${blocked.body}');
    } else if (blocked.statusCode == 200) {
      final decoded = jsonDecode(blocked.body);
      stdout.writeln(
        '  (sorpresa: search legada habilitada, results='
        '${decoded is Map ? (decoded['results'] as List?)?.length : '?'}',
      );
    }

    stdout.writeln('');
    stdout.writeln('Smoke OK');
    exitCode = 0;
  } catch (error, stack) {
    stderr.writeln('Smoke FAIL: $error');
    stderr.writeln(stack);
    exitCode = 1;
  } finally {
    authClient.close();
    mlClient.close();
  }
}

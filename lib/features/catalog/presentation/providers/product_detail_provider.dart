import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/catalog_product.dart';
import '../../domain/usecases/get_product_by_id.dart';

part 'product_detail_provider.g.dart';

@riverpod
Future<CatalogProduct> productDetail(
  Ref ref, {
  required String productId,
}) {
  return getIt<GetProductById>()(productId, includeOffers: true);
}

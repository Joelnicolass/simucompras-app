import '../../domain/entities/catalog_product.dart';
import '../models/catalog_product_model.dart';

extension CatalogProductModelMapper on CatalogProductModel {
  CatalogProduct toEntity({ProductOffer? bestOffer}) {
    return CatalogProduct(
      id: id,
      title: title,
      domainId: domainId,
      status: status,
      thumbnailUrl: thumbnailUrl,
      pictureUrls: pictureUrls,
      shortDescription: shortDescription,
      attributes: attributes.map((a) => a.toEntity()).toList(growable: false),
      bestOffer: bestOffer,
    );
  }
}

extension ProductAttributeModelMapper on ProductAttributeModel {
  ProductAttribute toEntity() => ProductAttribute(
        id: id,
        name: name,
        valueName: valueName,
      );
}

extension ProductOfferModelMapper on ProductOfferModel {
  ProductOffer toEntity() => ProductOffer(
        itemId: itemId,
        price: price,
        currencyId: currencyId,
        condition: condition,
        originalPrice: originalPrice,
        categoryId: categoryId,
        freeShipping: freeShipping,
        sellerId: sellerId,
      );
}

extension ProductSearchPageModelMapper on ProductSearchPageModel {
  ProductSearchPage toEntity({
    Map<String, ProductOffer?> offersByProductId = const {},
  }) {
    return ProductSearchPage(
      query: query,
      results: results
          .map((p) => p.toEntity(bestOffer: offersByProductId[p.id]))
          .toList(growable: false),
      total: total,
      limit: limit,
      offset: offset,
    );
  }
}

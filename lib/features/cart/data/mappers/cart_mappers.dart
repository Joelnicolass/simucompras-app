import '../../domain/entities/cart.dart';
import '../models/cart_model.dart';

extension CartLineModelMapper on CartLineModel {
  CartLine toEntity() => CartLine(
    productId: productId,
    title: title,
    thumbnailUrl: thumbnailUrl,
    unitPrice: unitPrice,
    originalUnitPrice: originalUnitPrice,
    quantity: quantity,
    isSuperOffer: isSuperOffer,
    categoryId: categoryId,
  );
}

extension CartLineEntityMapper on CartLine {
  CartLineModel toModel() => CartLineModel(
    productId: productId,
    title: title,
    thumbnailUrl: thumbnailUrl,
    unitPrice: unitPrice,
    originalUnitPrice: originalUnitPrice,
    quantity: quantity,
    isSuperOffer: isSuperOffer,
    categoryId: categoryId,
  );
}

extension CartModelMapper on CartModel {
  Cart toEntity() => Cart(lines: lines.map((l) => l.toEntity()).toList());
}

extension CartEntityMapper on Cart {
  CartModel toModel() => CartModel(lines: lines.map((l) => l.toModel()).toList());
}

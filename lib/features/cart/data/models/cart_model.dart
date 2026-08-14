import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
abstract class CartLineModel with _$CartLineModel {
  const factory CartLineModel({
    required String productId,
    required String title,
    String? thumbnailUrl,
    required double unitPrice,
    double? originalUnitPrice,
    required int quantity,
    @Default(false) bool isSuperOffer,
    String? categoryId,
  }) = _CartLineModel;

  factory CartLineModel.fromJson(Map<String, dynamic> json) =>
      _$CartLineModelFromJson(json);
}

@freezed
abstract class CartModel with _$CartModel {
  const factory CartModel({
    @Default([]) List<CartLineModel> lines,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';
import 'network_image_box.dart';

/// Medidas fijas del bloque de info de [ProductCard].
///
/// Cada fila reserva su alto aunque el dato falte (precio anterior, cuotas,
/// envío): así todas las cards miden lo mismo y el texto largo nunca
/// desborda. Orden según el diseño MeLi: título → precio anterior → precio
/// (+ % OFF) → cuotas → envío.
abstract final class ProductCardLayout {
  static const double cardRadius = 8;

  static const double paddingHorizontal = 10;
  static const double paddingTop = 10;
  static const double paddingBottom = 12;

  static const double titleFontSize = 12;
  static const double titleLineHeight = 15;
  static const int titleMaxLines = 2;

  static const double originalPriceFontSize = 11;
  static const double originalPriceLineHeight = 14;

  static const double priceFontSize = 17;
  static const double priceLineHeight = 20;

  static const double detailFontSize = 12;
  static const double detailLineHeight = 16;

  static const double gapSmall = 2;
  static const double gap = 6;

  /// Alto total del bloque de texto bajo la imagen.
  static const double infoBlockHeight = paddingTop +
      titleLineHeight * titleMaxLines +
      gap +
      originalPriceLineHeight +
      gapSmall +
      priceLineHeight +
      gapSmall +
      detailLineHeight + // cuotas
      gapSmall +
      detailLineHeight + // envío
      paddingBottom;

  /// Alto total de la card para un ancho dado (imagen cuadrada + info).
  static double cardHeightFor(double width) => width + infoBlockHeight;
}

/// Card de producto estilo MeLi (imagen, título, precios, favorito dummy).
///
/// Totalmente stateless: el padre controla [isFavorite] y los callbacks.
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    this.priceText,
    this.imageUrl,
    this.originalPriceText,
    this.discountLabel,
    this.installmentsText,
    this.shippingLabel,
    this.noPriceLabel = 'Precio no disponible',
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
    this.width,
  });

  final String title;

  /// Precio formateado. Null/vacío = sin oferta activa: se muestra
  /// [noPriceLabel] en estilo atenuado.
  final String? priceText;

  /// Label para productos de catálogo sin publicaciones activas.
  final String noPriceLabel;

  final String? imageUrl;

  /// Precio anterior (se muestra tachado).
  final String? originalPriceText;

  /// Ej: "49% OFF", inline junto al precio.
  final String? discountLabel;

  /// Ej: "en 12x $ 15.699".
  final String? installmentsText;

  final String? shippingLabel;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  /// Ancho fijo (carrusel horizontal). Null = expandirse al padre (grilla).
  final double? width;

  bool get _hasPrice => priceText != null && priceText!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final card = Material(
      color: MeliColors.surface,
      elevation: 0,
      borderRadius: BorderRadius.circular(ProductCardLayout.cardRadius),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  NetworkImageBox(
                    imageUrl: imageUrl,
                    fit: BoxFit.contain,
                    placeholderIcon: Icons.inventory_2_outlined,
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: _FavoriteButton(
                      isFavorite: isFavorite,
                      onTap: onFavoriteTap,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ProductCardLayout.infoBlockHeight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  ProductCardLayout.paddingHorizontal,
                  ProductCardLayout.paddingTop,
                  ProductCardLayout.paddingHorizontal,
                  ProductCardLayout.paddingBottom,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: ProductCardLayout.titleLineHeight *
                          ProductCardLayout.titleMaxLines,
                      width: double.infinity,
                      child: Text(
                        title,
                        maxLines: ProductCardLayout.titleMaxLines,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: ProductCardLayout.titleFontSize,
                          color: MeliColors.textSecondary,
                          height: ProductCardLayout.titleLineHeight /
                              ProductCardLayout.titleFontSize,
                        ),
                      ),
                    ),
                    const SizedBox(height: ProductCardLayout.gap),
                    _FixedLine(
                      height: ProductCardLayout.originalPriceLineHeight,
                      text: originalPriceText,
                      style: const TextStyle(
                        fontSize: ProductCardLayout.originalPriceFontSize,
                        color: MeliColors.textMuted,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: MeliColors.textMuted,
                      ),
                    ),
                    const SizedBox(height: ProductCardLayout.gapSmall),
                    SizedBox(
                      height: ProductCardLayout.priceLineHeight,
                      child: _hasPrice
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    priceText!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize:
                                          ProductCardLayout.priceFontSize,
                                      fontWeight: FontWeight.w500,
                                      color: MeliColors.textDark,
                                    ),
                                  ),
                                ),
                                if (discountLabel != null &&
                                    discountLabel!.isNotEmpty) ...[
                                  const SizedBox(width: 6),
                                  Text(
                                    discountLabel!,
                                    style: const TextStyle(
                                      fontSize:
                                          ProductCardLayout.detailFontSize,
                                      fontWeight: FontWeight.w600,
                                      color: MeliColors.discount,
                                    ),
                                  ),
                                ],
                              ],
                            )
                          : Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                noPriceLabel,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic,
                                  color: MeliColors.textMuted,
                                ),
                              ),
                            ),
                    ),
                    const SizedBox(height: ProductCardLayout.gapSmall),
                    _FixedLine(
                      height: ProductCardLayout.detailLineHeight,
                      text: installmentsText,
                      style: const TextStyle(
                        fontSize: ProductCardLayout.detailFontSize,
                        color: MeliColors.textDark,
                      ),
                    ),
                    const SizedBox(height: ProductCardLayout.gapSmall),
                    _FixedLine(
                      height: ProductCardLayout.detailLineHeight,
                      text: shippingLabel,
                      style: const TextStyle(
                        fontSize: ProductCardLayout.detailFontSize,
                        fontWeight: FontWeight.w600,
                        color: MeliColors.success,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    if (width != null) {
      return SizedBox(width: width, child: card);
    }
    return card;
  }
}

/// Variante horizontal (lista "inspirado en…").
class ProductListTileCard extends StatelessWidget {
  const ProductListTileCard({
    super.key,
    required this.title,
    required this.priceText,
    this.imageUrl,
    this.discountLabel,
    this.shippingLabel,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  final String title;
  final String priceText;
  final String? imageUrl;
  final String? discountLabel;
  final String? shippingLabel;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MeliColors.surface,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  NetworkImageBox(
                    imageUrl: imageUrl,
                    width: 84,
                    height: 84,
                    fit: BoxFit.contain,
                    borderRadius: 4,
                    placeholderIcon: Icons.inventory_2_outlined,
                  ),
                  Positioned(
                    top: 2,
                    right: 2,
                    child: _FavoriteButton(
                      isFavorite: isFavorite,
                      onTap: onFavoriteTap,
                      size: 28,
                      iconSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        color: MeliColors.textDark,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          priceText,
                          style: const TextStyle(
                            fontSize: 16,
                            color: MeliColors.textDark,
                          ),
                        ),
                        if (discountLabel != null &&
                            discountLabel!.isNotEmpty) ...[
                          const SizedBox(width: 8),
                          Text(
                            discountLabel!,
                            style: const TextStyle(
                              fontSize: 12,
                              color: MeliColors.discount,
                            ),
                          ),
                        ],
                      ],
                    ),
                    if (shippingLabel != null &&
                        shippingLabel!.isNotEmpty) ...[
                      const SizedBox(height: 6),
                      Text(
                        shippingLabel!,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: MeliColors.success,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Línea de texto de alto fijo; reserva el espacio aunque [text] sea null
/// para que todas las cards queden alineadas.
class _FixedLine extends StatelessWidget {
  const _FixedLine({
    required this.height,
    required this.text,
    required this.style,
  });

  final double height;
  final String? text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    final value = text;
    return SizedBox(
      height: height,
      width: double.infinity,
      child: value == null || value.isEmpty
          ? null
          : Text(
              value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: style,
            ),
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton({
    required this.isFavorite,
    this.onTap,
    this.size = 32,
    this.iconSize = 18,
  });

  final bool isFavorite;
  final VoidCallback? onTap;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MeliColors.surface.withValues(alpha: 0.92),
      shape: const CircleBorder(),
      elevation: 1,
      shadowColor: const Color(0x33000000),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: size,
          height: size,
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            size: iconSize,
            color: isFavorite ? const Color(0xFFE74C3C) : MeliColors.action,
          ),
        ),
      ),
    );
  }
}

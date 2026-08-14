import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';
import 'app_animated_text.dart';
import 'app_hero.dart';
import 'network_image_box.dart';

/// Medidas fijas del bloque de info de [ProductCard].
///
/// Cada fila reserva su alto aunque el dato falte (precio anterior, cuotas,
/// envío): así todas las cards miden lo mismo y el texto largo nunca
/// desborda. Orden: badge oferta → título → precio anterior → precio
/// (+ % OFF) → cuotas → envío.
abstract final class ProductCardLayout {
  static const double cardRadius = 8;

  static const double paddingHorizontal = 10;
  static const double paddingTop = 10;
  static const double paddingBottom = 12;

  static const double offerBadgeFontSize = 11;
  static const double offerBadgeLineHeight = 14;

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
      offerBadgeLineHeight +
      gapSmall +
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

/// Card de producto estilo MeLi (imagen, título, precios, favorito).
///
/// Totalmente stateless: el padre controla [isFavorite] y los callbacks.
/// Si [isSuperOffer] es true, usa el gradiente tipo “nivel 6”.
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    this.priceText,
    this.imageUrl,
    this.heroTag,
    this.originalPriceText,
    this.discountLabel,
    this.installmentsText,
    this.shippingLabel,
    this.noPriceLabel = 'Precio no disponible',
    this.isSuperOffer = false,
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

  /// Tag para transición heroine de la imagen (vía [AppHero]).
  final String? heroTag;

  /// Precio anterior (se muestra tachado).
  final String? originalPriceText;

  /// Ej: "49% OFF", inline junto al precio.
  final String? discountLabel;

  /// Ej: "en 12x $ 15.699".
  final String? installmentsText;

  final String? shippingLabel;
  final bool isSuperOffer;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  /// Ancho fijo (carrusel horizontal). Null = expandirse al padre (grilla).
  final double? width;

  bool get _hasPrice => priceText != null && priceText!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final onGradient = isSuperOffer;
    final titleColor =
        onGradient ? Colors.white.withValues(alpha: 0.92) : MeliColors.textSecondary;
    final mutedColor =
        onGradient ? Colors.white.withValues(alpha: 0.55) : MeliColors.textMuted;
    final bodyColor = onGradient ? Colors.white : MeliColors.textDark;
    final shippingColor =
        onGradient ? const Color(0xFFB8F5D1) : MeliColors.success;
    final discountColor =
        onGradient ? MeliColors.brand : MeliColors.discount;

    final card = Material(
      color: Colors.transparent,
      elevation: 0,
      borderRadius: BorderRadius.circular(ProductCardLayout.cardRadius),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: onGradient ? null : MeliColors.surface,
            gradient: onGradient
                ? const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      MeliColors.subscriptionStart,
                      MeliColors.subscriptionEnd,
                    ],
                  )
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ColoredBox(
                  color: MeliColors.surface,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (heroTag != null)
                        AppHero(
                          tag: heroTag!,
                          child: NetworkImageBox(
                            imageUrl: imageUrl,
                            fit: BoxFit.contain,
                            placeholderIcon: Icons.inventory_2_outlined,
                          ),
                        )
                      else
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
                        height: ProductCardLayout.offerBadgeLineHeight,
                        width: double.infinity,
                        child: isSuperOffer
                            ? const AppAnimatedText(
                                texts: ['¡Oferta!'],
                                style: AppTextAnimationStyle.typewriter,
                                repeatForever: true,
                                pause: Duration(milliseconds: 800),
                                textStyle: TextStyle(
                                  fontSize: ProductCardLayout.offerBadgeFontSize,
                                  fontWeight: FontWeight.w800,
                                  color: MeliColors.brand,
                                  height:
                                      ProductCardLayout.offerBadgeLineHeight /
                                      ProductCardLayout.offerBadgeFontSize,
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                      const SizedBox(height: ProductCardLayout.gapSmall),
                      SizedBox(
                        height: ProductCardLayout.titleLineHeight *
                            ProductCardLayout.titleMaxLines,
                        width: double.infinity,
                        child: Text(
                          title,
                          maxLines: ProductCardLayout.titleMaxLines,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: ProductCardLayout.titleFontSize,
                            color: titleColor,
                            height: ProductCardLayout.titleLineHeight /
                                ProductCardLayout.titleFontSize,
                          ),
                        ),
                      ),
                      const SizedBox(height: ProductCardLayout.gap),
                      _FixedLine(
                        height: ProductCardLayout.originalPriceLineHeight,
                        text: originalPriceText,
                        style: TextStyle(
                          fontSize: ProductCardLayout.originalPriceFontSize,
                          color: mutedColor,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: mutedColor,
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
                                    child: isSuperOffer
                                        ? AppAnimatedText(
                                            texts: [priceText!],
                                            style:
                                                AppTextAnimationStyle.colorize,
                                            colorizeColors: const [
                                              Colors.white,
                                              MeliColors.brand,
                                              Color(0xFFFF9F5A),
                                              Colors.white,
                                            ],
                                            textStyle: const TextStyle(
                                              fontSize: ProductCardLayout
                                                  .priceFontSize,
                                              fontWeight: FontWeight.w700,
                                              height: ProductCardLayout
                                                      .priceLineHeight /
                                                  ProductCardLayout
                                                      .priceFontSize,
                                            ),
                                          )
                                        : Text(
                                            priceText!,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: ProductCardLayout
                                                  .priceFontSize,
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
                                      style: TextStyle(
                                        fontSize:
                                            ProductCardLayout.detailFontSize,
                                        fontWeight: FontWeight.w600,
                                        color: discountColor,
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
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                    color: mutedColor,
                                  ),
                                ),
                              ),
                      ),
                      const SizedBox(height: ProductCardLayout.gapSmall),
                      _FixedLine(
                        height: ProductCardLayout.detailLineHeight,
                        text: installmentsText,
                        style: TextStyle(
                          fontSize: ProductCardLayout.detailFontSize,
                          color: bodyColor,
                        ),
                      ),
                      const SizedBox(height: ProductCardLayout.gapSmall),
                      _FixedLine(
                        height: ProductCardLayout.detailLineHeight,
                        text: shippingLabel,
                        style: TextStyle(
                          fontSize: ProductCardLayout.detailFontSize,
                          fontWeight: FontWeight.w600,
                          color: shippingColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
    this.onTap,
    this.isFavorite = false,
    this.onFavoriteTap,
  });

  final String title;
  final String priceText;
  final String? imageUrl;
  final String? discountLabel;
  final VoidCallback? onTap;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MeliColors.surface,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: SizedBox(
                  width: 72,
                  height: 72,
                  child: NetworkImageBox(
                    imageUrl: imageUrl,
                    fit: BoxFit.contain,
                    placeholderIcon: Icons.inventory_2_outlined,
                  ),
                ),
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
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      priceText,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (discountLabel != null)
                      Text(
                        discountLabel!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: MeliColors.discount,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ),
              _FavoriteButton(
                isFavorite: isFavorite,
                onTap: onFavoriteTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
    return SizedBox(
      height: height,
      width: double.infinity,
      child: text == null || text!.isEmpty
          ? const SizedBox.shrink()
          : Text(
              text!,
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
  });

  final bool isFavorite;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MeliColors.surface,
      shape: const CircleBorder(),
      elevation: 1,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            size: 18,
            color: isFavorite ? const Color(0xFFE74C3C) : MeliColors.action,
          ),
        ),
      ),
    );
  }
}

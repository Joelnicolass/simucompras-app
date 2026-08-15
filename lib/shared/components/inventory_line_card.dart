import 'package:flutter/material.dart';

import '../../core/theme/meli_colors.dart';
import '../../core/theme/meli_radii.dart';
import 'network_image_box.dart';

/// Card de inventario para revender (Mis compras).
///
/// Mismo lenguaje visual que [CartLineTile] / list tiles MeLi.
class InventoryLineCard extends StatelessWidget {
  const InventoryLineCard({
    super.key,
    required this.title,
    required this.paidPriceText,
    required this.resalePriceText,
    this.imageUrl,
    this.quantityLabel,
    this.isSuperOffer = false,
    this.onSell,
    this.selling = false,
  });

  final String title;
  final String paidPriceText;
  final String resalePriceText;
  final String? imageUrl;
  final String? quantityLabel;
  final bool isSuperOffer;
  final VoidCallback? onSell;
  final bool selling;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MeliColors.surface,
      borderRadius: MeliRadii.cardAll,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NetworkImageBox(
              imageUrl: imageUrl,
              width: 64,
              height: 64,
              borderRadius: MeliRadii.xs,
              fit: BoxFit.cover,
              placeholderIcon: Icons.shopping_bag_outlined,
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
                  if (isSuperOffer)
                    const Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(
                        '¡Súper oferta!',
                        style: TextStyle(
                          color: MeliColors.success,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  if (quantityLabel != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      quantityLabel!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: MeliColors.textSecondary,
                      ),
                    ),
                  ],
                  const SizedBox(height: 8),
                  Text(
                    'Pagaste $paidPriceText',
                    style: const TextStyle(
                      fontSize: 13,
                      color: MeliColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Vendés por $resalePriceText',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: MeliColors.success,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 36,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: MeliColors.action,
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: MeliRadii.buttonAll,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      onPressed: selling ? null : onSell,
                      child: selling
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Vender',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

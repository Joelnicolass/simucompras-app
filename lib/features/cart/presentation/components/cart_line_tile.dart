import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/game_config.dart';
import '../../../../core/theme/meli_colors.dart';
import '../../../../core/theme/meli_radii.dart';
import '../../../../shared/components/network_image_box.dart';
import '../../../../shared/utils/price_format.dart';
import '../../domain/entities/cart.dart';
import '../providers/cart_provider.dart';

/// Línea de carrito editable (+ / − / borrar).
///
/// Compartido por [CartView] y [CheckoutView] para mantener la misma UI.
class CartLineTile extends ConsumerWidget {
  const CartLineTile({
    super.key,
    required this.line,
    this.enabled = true,
  });

  final CartLine line;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.read(cartControllerProvider.notifier);

    return Material(
      color: MeliColors.surface,
      borderRadius: MeliRadii.cardAll,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NetworkImageBox(
              imageUrl: line.thumbnailUrl,
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
                    line.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 14),
                  ),
                  if (line.isSuperOffer)
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
                  const SizedBox(height: 8),
                  Text(
                    PriceFormat.ars(line.unitPrice),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        visualDensity: VisualDensity.compact,
                        onPressed: !enabled
                            ? null
                            : () => cart.setQuantity(
                                  line.productId,
                                  line.quantity - 1,
                                ),
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                      Text(
                        '${line.quantity}',
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        visualDensity: VisualDensity.compact,
                        onPressed: !enabled ||
                                line.quantity >= GameConfig.maxQuantityPerLine
                            ? null
                            : () => cart.setQuantity(
                                  line.productId,
                                  line.quantity + 1,
                                ),
                        icon: const Icon(Icons.add_circle_outline),
                      ),
                      const Spacer(),
                      IconButton(
                        tooltip: 'Quitar',
                        onPressed: !enabled
                            ? null
                            : () => cart.remove(line.productId),
                        icon: const Icon(
                          Icons.delete_outline,
                          color: MeliColors.danger,
                        ),
                      ),
                    ],
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

import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_placeholder_box.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key,
    required this.title,
    required this.price,
    this.discountLabel,
    this.shippingLabel,
    this.compact = false,
  });

  final String title;
  final String price;
  final String? discountLabel;
  final String? shippingLabel;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    if (compact) {
      return _CompactCard(
        title: title,
        price: price,
        discountLabel: discountLabel,
      );
    }

    return Container(
      color: MeliColors.surface,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomePlaceholderBox(
            height: 180,
            icon: Icons.phone_iphone_outlined,
            label: 'Producto',
          ),
          const SizedBox(height: 12),
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
                price,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: MeliColors.textDark,
                ),
              ),
              if (discountLabel != null) ...[
                const SizedBox(width: 8),
                Text(
                  discountLabel!,
                  style: const TextStyle(
                    fontSize: 14,
                    color: MeliColors.discount,
                  ),
                ),
              ],
            ],
          ),
          if (shippingLabel != null) ...[
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
    );
  }
}

class _CompactCard extends StatelessWidget {
  const _CompactCard({
    required this.title,
    required this.price,
    this.discountLabel,
  });

  final String title;
  final String price;
  final String? discountLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MeliColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AspectRatio(
            aspectRatio: 1,
            child: HomePlaceholderBox(
              borderRadius: 0,
              icon: Icons.inventory_2_outlined,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 16,
                        color: MeliColors.textDark,
                      ),
                    ),
                    if (discountLabel != null) ...[
                      const SizedBox(width: 6),
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
                const SizedBox(height: 4),
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    color: MeliColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeProductListTile extends StatelessWidget {
  const HomeProductListTile({
    super.key,
    required this.title,
    required this.price,
    this.discountLabel,
  });

  final String title;
  final String price;
  final String? discountLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MeliColors.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          const HomePlaceholderBox(
            width: 72,
            height: 72,
            icon: Icons.inventory_2_outlined,
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
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 16,
                        color: MeliColors.textDark,
                      ),
                    ),
                    if (discountLabel != null) ...[
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

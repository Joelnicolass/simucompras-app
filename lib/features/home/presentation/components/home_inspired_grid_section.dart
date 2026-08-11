import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_product_card.dart';
import 'home_section_header.dart';

class HomeInspiredGridSection extends StatelessWidget {
  const HomeInspiredGridSection({super.key});

  static const _items = [
    (title: 'Producto en grilla 1', price: r'$ 22.000', discount: '5% OFF'),
    (title: 'Producto en grilla 2', price: r'$ 67.400', discount: '20% OFF'),
    (title: 'Producto en grilla 3', price: r'$ 3.150', discount: null),
    (title: 'Producto en grilla 4', price: r'$ 89.990', discount: '30% OFF'),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: MeliColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ColoredBox(
            color: MeliColors.surface,
            child: HomeSectionHeader(
              title: 'Inspirado en lo último que viste',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.72,
              ),
              itemBuilder: (context, index) {
                final item = _items[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: HomeProductCard(
                    title: item.title,
                    price: item.price,
                    discountLabel: item.discount,
                    compact: true,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

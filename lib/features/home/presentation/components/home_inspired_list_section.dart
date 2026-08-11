import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_product_card.dart';
import 'home_section_header.dart';
import 'home_section_link.dart';

class HomeInspiredListSection extends StatelessWidget {
  const HomeInspiredListSection({super.key});

  static const _items = [
    (title: 'Producto inspirado 1', price: r'$ 12.999', discount: '10% OFF'),
    (title: 'Producto inspirado 2', price: r'$ 45.500', discount: '25% OFF'),
    (title: 'Producto inspirado 3', price: r'$ 8.200', discount: null),
    (title: 'Producto inspirado 4', price: r'$ 199.999', discount: '15% OFF'),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: MeliColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HomeSectionHeader(title: 'Inspirado en lo último que viste'),
          for (var i = 0; i < _items.length; i++) ...[
            HomeProductListTile(
              title: _items[i].title,
              price: _items[i].price,
              discountLabel: _items[i].discount,
            ),
            if (i < _items.length - 1)
              const Divider(
                height: 1,
                indent: 100,
                color: MeliColors.divider,
              ),
          ],
          const Divider(height: 1, color: MeliColors.divider),
          const HomeSectionLink(label: 'Ver todo lo visto e inspirados'),
        ],
      ),
    );
  }
}

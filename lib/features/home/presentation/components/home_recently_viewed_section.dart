import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_product_card.dart';
import 'home_section_header.dart';
import 'home_section_link.dart';

class HomeRecentlyViewedSection extends StatelessWidget {
  const HomeRecentlyViewedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: MeliColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeSectionHeader(title: 'Visto recientemente'),
          HomeProductCard(
            title: 'Producto de ejemplo · lugar de título',
            price: r'$ 00.000',
            discountLabel: '00% OFF',
            shippingLabel: 'Llega gratis mañana',
          ),
          Divider(height: 1, color: MeliColors.divider),
          HomeSectionLink(label: 'Ver historial de navegación'),
        ],
      ),
    );
  }
}

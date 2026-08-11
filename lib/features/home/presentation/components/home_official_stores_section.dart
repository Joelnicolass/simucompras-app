import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_placeholder_box.dart';
import 'home_section_header.dart';

class HomeOfficialStoresSection extends StatelessWidget {
  const HomeOfficialStoresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: MeliColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HomeSectionHeader(
            title: 'Tiendas oficiales',
            actionLabel: 'Ver más',
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: const Column(
                children: [
                  HomePlaceholderBox(
                    height: 140,
                    borderRadius: 0,
                    icon: Icons.storefront_outlined,
                    label: 'Imagen de tienda',
                  ),
                  ColoredBox(
                    color: MeliColors.background,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          HomePlaceholderBox(
                            width: 44,
                            height: 44,
                            borderRadius: 22,
                            icon: Icons.business_outlined,
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Marca oficial',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Tienda oficial · placeholder',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: MeliColors.textSecondary,
                                  ),
                                ),
                              ],
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_section_header.dart';
import 'home_section_link.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({super.key});

  static const _categories = [
    (Icons.phone_android_outlined, 'Celulares'),
    (Icons.kitchen_outlined, 'Electrodomésticos'),
    (Icons.chair_outlined, 'Hogar'),
    (Icons.computer_outlined, 'Computación'),
    (Icons.sports_esports_outlined, 'Gaming'),
    (Icons.checkroom_outlined, 'Moda'),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: MeliColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HomeSectionHeader(title: 'Categorías populares'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.95,
              ),
              itemBuilder: (context, index) {
                final item = _categories[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: MeliColors.divider),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item.$1, size: 28, color: MeliColors.action),
                      const SizedBox(height: 8),
                      Text(
                        item.$2,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          color: MeliColors.textDark,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const HomeSectionLink(label: 'Ver más categorías'),
        ],
      ),
    );
  }
}

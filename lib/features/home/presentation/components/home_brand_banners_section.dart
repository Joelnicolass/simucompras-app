import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_placeholder_box.dart';

class HomeBrandBannersSection extends StatelessWidget {
  const HomeBrandBannersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: const HomePlaceholderBox(
              height: 120,
              borderRadius: 0,
              icon: Icons.movie_outlined,
              label: 'Banner streaming / marcas',
            ),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              height: 100,
              color: MeliColors.surface,
              alignment: Alignment.center,
              child: const HomePlaceholderBox(
                height: 100,
                borderRadius: 0,
                icon: Icons.store_mall_directory_outlined,
                label: 'Banner marca full-width',
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  child: HomePlaceholderBox(
                    height: 150,
                    borderRadius: 0,
                    icon: Icons.local_offer_outlined,
                    label: 'Oferta A',
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  child: HomePlaceholderBox(
                    height: 150,
                    borderRadius: 0,
                    icon: Icons.local_offer_outlined,
                    label: 'Oferta B',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

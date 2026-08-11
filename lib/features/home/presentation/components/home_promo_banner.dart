import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_placeholder_box.dart';

class HomePromoBanner extends StatelessWidget {
  const HomePromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomePlaceholderBox(
          height: 148,
          borderRadius: 0,
          icon: Icons.campaign_outlined,
          label: 'Banner promocional',
        ),
        Container(
          color: MeliColors.surface,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              final active = index == 0;
              return Container(
                width: active ? 8 : 6,
                height: active ? 8 : 6,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: active
                      ? MeliColors.action
                      : MeliColors.textMuted,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

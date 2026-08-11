import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  static const _links = [
    'Mi cuenta',
    'Ofertas',
    'Historial',
    'Favoritos',
    'Vender',
    'Ayuda',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ColoredBox(
          color: MeliColors.surface,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
            child: Wrap(
              spacing: 20,
              runSpacing: 14,
              children: [
                for (final link in _links)
                  Text(
                    link,
                    style: const TextStyle(
                      fontSize: 14,
                      color: MeliColors.action,
                    ),
                  ),
              ],
            ),
          ),
        ),
        const ColoredBox(
          color: MeliColors.background,
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 20, 24, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Argentina',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: MeliColors.textSecondary,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Copyright © placeholder · SimuCompras',
                  style: TextStyle(
                    fontSize: 12,
                    color: MeliColors.textSecondary,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Trabajamos para que compres calmo, no impulsivo.',
                  style: TextStyle(
                    fontSize: 12,
                    color: MeliColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const ColoredBox(
          color: MeliColors.brand,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              'Términos · Privacidad · Defensa del Consumidor',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, color: MeliColors.textDark),
            ),
          ),
        ),
      ],
    );
  }
}

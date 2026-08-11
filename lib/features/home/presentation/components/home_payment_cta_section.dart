import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_placeholder_box.dart';

class HomePaymentCtaSection extends StatelessWidget {
  const HomePaymentCtaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: MeliColors.surface,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
        child: Column(
          children: [
            const HomePlaceholderBox(
              width: 80,
              height: 56,
              icon: Icons.credit_card_outlined,
              label: 'Cards',
            ),
            const SizedBox(height: 16),
            const Text(
              'Pagá como quieras',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: MeliColors.textDark,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tarjeta, débito, efectivo o cuotas. Placeholder de beneficios.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: MeliColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Cómo pagar tus compras',
                style: TextStyle(color: MeliColors.action),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Ingresar',
                    style: TextStyle(
                      color: MeliColors.action,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Crear cuenta',
                    style: TextStyle(
                      color: MeliColors.action,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

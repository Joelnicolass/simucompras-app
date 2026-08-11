import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import 'home_placeholder_box.dart';

class HomeSubscriptionBanner extends StatelessWidget {
  const HomeSubscriptionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        gradient: const LinearGradient(
          colors: [
            MeliColors.subscriptionStart,
            MeliColors.subscriptionEnd,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Suscribite al nivel 6',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Beneficios exclusivos · placeholder',
            style: TextStyle(fontSize: 13, color: Colors.white70),
          ),
          const SizedBox(height: 14),
          Row(
            children: List.generate(
              3,
              (index) => const Padding(
                padding: EdgeInsets.only(right: 10),
                child: HomePlaceholderBox(
                  width: 48,
                  height: 32,
                  borderRadius: 4,
                  icon: Icons.play_circle_outline,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.white24,
              ),
              child: const Text('Suscribite'),
            ),
          ),
        ],
      ),
    );
  }
}

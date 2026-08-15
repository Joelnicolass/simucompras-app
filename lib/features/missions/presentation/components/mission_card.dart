import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../core/theme/meli_radii.dart';
import '../../../../shared/utils/price_format.dart';
import '../../domain/entities/mission.dart';

/// Card visual de objetivo / misión.
class MissionCard extends StatelessWidget {
  const MissionCard({super.key, required this.mission});

  final Mission mission;

  @override
  Widget build(BuildContext context) {
    final completed = mission.status == MissionStatus.completed;
    final (icon, accent, tint) = _styleFor(mission);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: MeliRadii.cardAll,
        gradient: LinearGradient(
          colors: [
            tint.withValues(alpha: 0.18),
            MeliColors.surface,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: completed ? MeliColors.success.withValues(alpha: 0.5) : tint,
        ),
        boxShadow: [
          BoxShadow(
            color: tint.withValues(alpha: 0.12),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(MeliRadii.md),
              ),
              child: Icon(icon, color: accent),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          mission.title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      if (completed)
                        const Icon(
                          Icons.check_circle,
                          size: 18,
                          color: MeliColors.success,
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    mission.description,
                    style: const TextStyle(
                      fontSize: 13,
                      color: MeliColors.textSecondary,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: MeliColors.success.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(MeliRadii.pill),
                    ),
                    child: Text(
                      '+${PriceFormat.ars(mission.rewardPesos.toDouble())}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: MeliColors.success,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  (IconData, Color, Color) _styleFor(Mission mission) {
    return switch (mission) {
      FindSuperOfferMission() => (
        Icons.local_fire_department_rounded,
        const Color(0xFFE67E22),
        const Color(0xFFFFE0B2),
      ),
      BuyExpensiveMission() => (
        Icons.diamond_outlined,
        const Color(0xFF8E44AD),
        const Color(0xFFE8DAEF),
      ),
      BuyCheapDealMission() => (
        Icons.percent_rounded,
        MeliColors.success,
        const Color(0xFFD5F5E3),
      ),
      BuyKeywordMission() => (
        Icons.tv_rounded,
        MeliColors.action,
        const Color(0xFFD6EAF8),
      ),
      BuyCategoryMission() => (
        Icons.category_outlined,
        MeliColors.action,
        const Color(0xFFD6EAF8),
      ),
    };
  }
}

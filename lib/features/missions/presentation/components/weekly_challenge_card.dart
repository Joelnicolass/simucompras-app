import 'package:flutter/material.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../core/theme/meli_radii.dart';
import '../../../../shared/utils/price_format.dart';
import '../../domain/entities/weekly_challenge.dart';

/// Card del desafío semanal (progreso + reward).
class WeeklyChallengeCard extends StatelessWidget {
  const WeeklyChallengeCard({super.key, required this.challenge});

  final WeeklyChallenge challenge;

  @override
  Widget build(BuildContext context) {
    final completed = challenge.status == WeeklyChallengeStatus.completed ||
        challenge.status == WeeklyChallengeStatus.claimed;
    const accent = Color(0xFF8E44AD);
    const tint = Color(0xFFE8DAEF);

    final progressLabel = switch (challenge) {
      TotalSpendWeekly(:final progress, :final target) =>
        '${PriceFormat.ars(progress.toDouble())} / ${PriceFormat.ars(target.toDouble())}',
      _ => '${challenge.progress} / ${challenge.target}',
    };

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: MeliRadii.cardAll,
        gradient: LinearGradient(
          colors: [
            tint.withValues(alpha: 0.35),
            MeliColors.surface,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: completed ? MeliColors.success.withValues(alpha: 0.5) : accent,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: accent.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(MeliRadii.md),
                  ),
                  child: const Icon(Icons.emoji_events_outlined, color: accent),
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
                              challenge.title,
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
                        challenge.description,
                        style: const TextStyle(
                          fontSize: 13,
                          color: MeliColors.textSecondary,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: challenge.progressRatio,
                minHeight: 8,
                backgroundColor: MeliColors.divider,
                color: completed ? MeliColors.success : accent,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  progressLabel,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: MeliColors.textSecondary,
                  ),
                ),
                const Spacer(),
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
                    '+${PriceFormat.ars(challenge.rewardPesos.toDouble())}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: MeliColors.success,
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

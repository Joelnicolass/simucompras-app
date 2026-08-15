import 'dart:math';

import '../../../core/config/game_config.dart';
import '../domain/entities/weekly_challenge.dart';

/// Plantillas de desafío semanal.
abstract final class WeeklyChallengeCatalog {
  static String weekKeyFor(DateTime date) {
    final utc = date.toUtc();
    // Semana ISO aproximada: año + número de semana.
    final dayOfYear = utc.difference(DateTime.utc(utc.year)).inDays + 1;
    final week = ((dayOfYear - utc.weekday + 10) / 7).floor();
    final y = week < 1 ? utc.year - 1 : utc.year;
    final w = week < 1 ? 52 : week;
    return '$y-W${w.toString().padLeft(2, '0')}';
  }

  static WeeklyChallenge pickForWeek(String weekKey) {
    final stamp = weekKey.hashCode;
    final rng = Random(stamp);
    final roll = rng.nextInt(3);
    return switch (roll) {
      0 => WeeklyChallenge.distinctCategories(
        id: 'w_cat_$weekKey',
        weekKey: weekKey,
        title: 'Explorador semanal',
        description: 'Comprá en 3 categorías distintas esta semana.',
        target: 3,
        rewardPesos: GameConfig.weeklyRewardMid,
      ),
      1 => WeeklyChallenge.superOffersCount(
        id: 'w_super_$weekKey',
        weekKey: weekKey,
        title: 'Caza de ofertas',
        description: 'Comprá 2 súper ofertas esta semana.',
        target: 2,
        rewardPesos: GameConfig.weeklyRewardHi,
      ),
      _ => WeeklyChallenge.totalSpend(
        id: 'w_spend_$weekKey',
        weekKey: weekKey,
        title: 'Semana gastadora',
        description: 'Gastá al menos \$200.000 esta semana.',
        target: 200_000,
        rewardPesos: GameConfig.weeklyRewardLo,
      ),
    };
  }
}

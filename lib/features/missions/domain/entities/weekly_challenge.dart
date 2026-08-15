import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_challenge.freezed.dart';

enum WeeklyChallengeStatus { active, completed, claimed }

@freezed
sealed class WeeklyChallenge with _$WeeklyChallenge {
  const WeeklyChallenge._();

  /// Comprar en N categorías raíz distintas.
  const factory WeeklyChallenge.distinctCategories({
    required String id,
    required String weekKey,
    required String title,
    required String description,
    required int target,
    @Default(0) int progress,
    @Default([]) List<String> seenCategoryIds,
    required int rewardPesos,
    @Default(WeeklyChallengeStatus.active) WeeklyChallengeStatus status,
  }) = DistinctCategoriesWeekly;

  /// Comprar N súper ofertas.
  const factory WeeklyChallenge.superOffersCount({
    required String id,
    required String weekKey,
    required String title,
    required String description,
    required int target,
    @Default(0) int progress,
    required int rewardPesos,
    @Default(WeeklyChallengeStatus.active) WeeklyChallengeStatus status,
  }) = SuperOffersCountWeekly;

  /// Gastar al menos N pesos en la semana.
  const factory WeeklyChallenge.totalSpend({
    required String id,
    required String weekKey,
    required String title,
    required String description,
    required int target,
    @Default(0) int progress,
    required int rewardPesos,
    @Default(WeeklyChallengeStatus.active) WeeklyChallengeStatus status,
  }) = TotalSpendWeekly;

  bool get isComplete =>
      status == WeeklyChallengeStatus.completed ||
      status == WeeklyChallengeStatus.claimed ||
      progress >= target;

  double get progressRatio {
    if (target <= 0) return 1;
    return (progress / target).clamp(0.0, 1.0);
  }
}

/// Evento de progreso semanal derivado del checkout.
@freezed
abstract class WeeklyProgressEvent with _$WeeklyProgressEvent {
  const factory WeeklyProgressEvent({
    required Set<String> categoryIds,
    required int superOfferCount,
    required int spendPesos,
  }) = _WeeklyProgressEvent;
}

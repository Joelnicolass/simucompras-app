import '../../domain/datasources/weekly_challenge_local_datasource.dart';
import '../../domain/entities/weekly_challenge.dart';
import '../../domain/errors/missions_failure.dart';
import '../../domain/repositories/weekly_challenge_repository.dart';
import '../weekly_challenge_catalog.dart';

class WeeklyChallengeRepositoryImpl implements WeeklyChallengeRepository {
  WeeklyChallengeRepositoryImpl(this._local);

  final WeeklyChallengeLocalDatasource _local;

  @override
  Future<WeeklyChallenge> ensureCurrent({DateTime? now}) async {
    try {
      final key = WeeklyChallengeCatalog.weekKeyFor(now ?? DateTime.now());
      final existing = await _local.read();
      if (existing != null && existing.weekKey == key) {
        return existing;
      }
      final fresh = WeeklyChallengeCatalog.pickForWeek(key);
      await _local.save(fresh);
      return fresh;
    } catch (e) {
      throw MissionsStorageUnavailable(e);
    }
  }

  @override
  Future<WeeklyChallenge> evaluate(WeeklyProgressEvent event) async {
    try {
      var challenge = await ensureCurrent();
      if (challenge.status != WeeklyChallengeStatus.active) {
        return challenge;
      }

      var updated = switch (challenge) {
        final DistinctCategoriesWeekly c => () {
          final merged = {...c.seenCategoryIds, ...event.categoryIds}.toList();
          return c.copyWith(
            seenCategoryIds: merged,
            progress: merged.length,
          );
        }(),
        final SuperOffersCountWeekly c => c.copyWith(
          progress: c.progress + event.superOfferCount,
        ),
        final TotalSpendWeekly c => c.copyWith(
          progress: c.progress + event.spendPesos,
        ),
      };


      if (updated.progress >= updated.target) {
        updated = _withStatus(updated, WeeklyChallengeStatus.completed);
      }

      await _local.save(updated);
      return updated;
    } catch (e) {
      if (e is MissionsStorageUnavailable) rethrow;
      throw MissionsStorageUnavailable(e);
    }
  }

  @override
  Future<WeeklyChallenge?> claimIfCompleted() async {
    try {
      final challenge = await ensureCurrent();
      if (challenge.status != WeeklyChallengeStatus.completed) return null;
      final claimed = _withStatus(challenge, WeeklyChallengeStatus.claimed);
      await _local.save(claimed);
      return claimed;
    } catch (e) {
      throw MissionsStorageUnavailable(e);
    }
  }

  WeeklyChallenge _withStatus(WeeklyChallenge c, WeeklyChallengeStatus status) {
    return switch (c) {
      DistinctCategoriesWeekly() => c.copyWith(status: status),
      SuperOffersCountWeekly() => c.copyWith(status: status),
      TotalSpendWeekly() => c.copyWith(status: status),
    };
  }
}

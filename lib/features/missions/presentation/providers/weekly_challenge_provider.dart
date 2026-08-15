import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/weekly_challenge.dart';
import '../../domain/usecases/get_weekly_challenge.dart';

part 'weekly_challenge_provider.g.dart';

@Riverpod(keepAlive: true)
class WeeklyChallengeController extends _$WeeklyChallengeController {
  @override
  Future<WeeklyChallenge> build() {
    return getIt<GetWeeklyChallenge>()();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/player_progress.dart';
import '../../domain/usecases/get_player_progress.dart';

part 'player_progress_provider.g.dart';

@Riverpod(keepAlive: true)
class PlayerLevel extends _$PlayerLevel {
  @override
  Future<PlayerProgress> build() {
    return getIt<GetPlayerProgress>()();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}

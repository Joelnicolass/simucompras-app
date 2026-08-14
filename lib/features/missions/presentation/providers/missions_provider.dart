import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/mission.dart';
import '../../domain/usecases/get_active_missions.dart';

part 'missions_provider.g.dart';

@Riverpod(keepAlive: true)
class Missions extends _$Missions {
  @override
  Future<List<Mission>> build() {
    return getIt<GetActiveMissions>()();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_progress.freezed.dart';

@freezed
abstract class PlayerProgress with _$PlayerProgress {
  const factory PlayerProgress({
    @Default(0) int xp,
  }) = _PlayerProgress;
}

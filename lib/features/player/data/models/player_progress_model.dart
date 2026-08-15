import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_progress_model.freezed.dart';
part 'player_progress_model.g.dart';

@freezed
abstract class PlayerProgressModel with _$PlayerProgressModel {
  const factory PlayerProgressModel({
    @Default(0) int xp,
  }) = _PlayerProgressModel;

  factory PlayerProgressModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerProgressModelFromJson(json);
}

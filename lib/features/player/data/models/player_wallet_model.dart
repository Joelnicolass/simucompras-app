import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_wallet_model.freezed.dart';
part 'player_wallet_model.g.dart';

@freezed
abstract class PlayerWalletModel with _$PlayerWalletModel {
  const factory PlayerWalletModel({
    required int balancePesos,
    String? lastDailyTopUpDate,
  }) = _PlayerWalletModel;

  factory PlayerWalletModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerWalletModelFromJson(json);
}

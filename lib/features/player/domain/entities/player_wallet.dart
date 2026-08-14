import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_wallet.freezed.dart';

@freezed
abstract class PlayerWallet with _$PlayerWallet {
  const PlayerWallet._();

  const factory PlayerWallet({
    required int balancePesos,

    /// Día (UTC yyyy-MM-dd) de la última recarga diaria aplicada.
    String? lastDailyTopUpDate,
  }) = _PlayerWallet;

  bool get canAfford => balancePesos > 0;
}

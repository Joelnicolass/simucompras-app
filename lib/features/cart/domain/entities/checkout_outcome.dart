import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../missions/domain/entities/mission.dart';
import 'checkout_result.dart';

part 'checkout_outcome.freezed.dart';

/// Resultado de checkout + misiones cobradas en el mismo flujo.
@freezed
abstract class CheckoutOutcome with _$CheckoutOutcome {
  const factory CheckoutOutcome({
    required CheckoutResult result,
    @Default([]) List<Mission> claimedMissions,
  }) = _CheckoutOutcome;
}

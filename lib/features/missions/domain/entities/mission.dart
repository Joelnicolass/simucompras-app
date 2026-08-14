import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission.freezed.dart';

enum MissionStatus { active, completed, claimed }

@freezed
sealed class Mission with _$Mission {
  const Mission._();

  const factory Mission.buyCategory({
    required String id,
    required String categoryId,
    required String title,
    required String description,
    required int rewardPesos,
    @Default(MissionStatus.active) MissionStatus status,
  }) = BuyCategoryMission;

  const factory Mission.findSuperOffer({
    required String id,
    required String title,
    required String description,
    required int rewardPesos,
    @Default(MissionStatus.active) MissionStatus status,
  }) = FindSuperOfferMission;

  const factory Mission.buyExpensive({
    required String id,
    required int minPrice,
    required String title,
    required String description,
    required int rewardPesos,
    @Default(MissionStatus.active) MissionStatus status,
  }) = BuyExpensiveMission;

  const factory Mission.buyCheapDeal({
    required String id,
    required double minDiscount,
    required String title,
    required String description,
    required int rewardPesos,
    @Default(MissionStatus.active) MissionStatus status,
  }) = BuyCheapDealMission;

  const factory Mission.buyKeyword({
    required String id,
    required String keyword,
    required String title,
    required String description,
    required int rewardPesos,
    @Default(MissionStatus.active) MissionStatus status,
  }) = BuyKeywordMission;
}

@freezed
abstract class MissionProgressEvent with _$MissionProgressEvent {
  const factory MissionProgressEvent({
    required String productId,
    required String title,
    String? categoryId,
    required double unitPrice,
    required double? originalPrice,
    required bool isSuperOffer,
    required int quantity,
  }) = _MissionProgressEvent;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlayerWalletModel _$PlayerWalletModelFromJson(Map<String, dynamic> json) =>
    _PlayerWalletModel(
      balancePesos: (json['balancePesos'] as num).toInt(),
      lastDailyTopUpDate: json['lastDailyTopUpDate'] as String?,
    );

Map<String, dynamic> _$PlayerWalletModelToJson(_PlayerWalletModel instance) =>
    <String, dynamic>{
      'balancePesos': instance.balancePesos,
      'lastDailyTopUpDate': instance.lastDailyTopUpDate,
    };

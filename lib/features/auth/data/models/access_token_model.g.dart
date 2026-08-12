// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccessTokenModel _$AccessTokenModelFromJson(Map<String, dynamic> json) =>
    _AccessTokenModel(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String? ?? 'Bearer',
      expiresIn: (json['expires_in'] as num).toInt(),
      expiresAt: DateTime.parse(json['expires_at'] as String),
      cached: json['cached'] as bool? ?? false,
    );

Map<String, dynamic> _$AccessTokenModelToJson(_AccessTokenModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'expires_at': _dateTimeToUtcIso(instance.expiresAt),
      'cached': instance.cached,
    };

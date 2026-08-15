import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_model.freezed.dart';
part 'access_token_model.g.dart';

/// DTO del token emitido por el server de SimuCompras.
///
/// `toJson` se usa para persistir la sesión en storage local.
@freezed
abstract class AccessTokenModel with _$AccessTokenModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AccessTokenModel({
    required String accessToken,
    @Default('Bearer') String tokenType,
    required int expiresIn,
    @JsonKey(toJson: _dateTimeToUtcIso) required DateTime expiresAt,
    @Default(false) bool cached,
  }) = _AccessTokenModel;

  factory AccessTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenModelFromJson(json);
}

String _dateTimeToUtcIso(DateTime value) => value.toUtc().toIso8601String();

import '../../domain/entities/access_token.dart';
import '../models/access_token_model.dart';

extension AccessTokenModelMapper on AccessTokenModel {
  AccessToken toEntity() => AccessToken(
        value: accessToken,
        tokenType: tokenType,
        expiresIn: expiresIn,
        expiresAt: expiresAt,
        cached: cached,
      );
}

extension AccessTokenEntityMapper on AccessToken {
  AccessTokenModel toModel() => AccessTokenModel(
        accessToken: value,
        tokenType: tokenType,
        expiresIn: expiresIn,
        expiresAt: expiresAt,
        cached: cached,
      );
}

class AccessTokenModel {
  const AccessTokenModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.expiresAt,
    required this.cached,
  });

  factory AccessTokenModel.fromJson(Map<String, dynamic> json) {
    return AccessTokenModel(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String? ?? 'Bearer',
      expiresIn: (json['expires_in'] as num).toInt(),
      expiresAt: DateTime.parse(json['expires_at'] as String),
      cached: json['cached'] as bool? ?? false,
    );
  }

  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final DateTime expiresAt;
  final bool cached;
}

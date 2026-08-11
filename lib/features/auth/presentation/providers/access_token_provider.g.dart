// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Token de MercadoLibre desde el backend de SimuCompras (lectura async).

@ProviderFor(accessToken)
final accessTokenProvider = AccessTokenProvider._();

/// Token de MercadoLibre desde el backend de SimuCompras (lectura async).

final class AccessTokenProvider
    extends
        $FunctionalProvider<
          AsyncValue<AccessToken>,
          AccessToken,
          FutureOr<AccessToken>
        >
    with $FutureModifier<AccessToken>, $FutureProvider<AccessToken> {
  /// Token de MercadoLibre desde el backend de SimuCompras (lectura async).
  AccessTokenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accessTokenProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accessTokenHash();

  @$internal
  @override
  $FutureProviderElement<AccessToken> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AccessToken> create(Ref ref) {
    return accessToken(ref);
  }
}

String _$accessTokenHash() => r'9ca847bb728f52274a20ebb1939be32c63e4bef9';

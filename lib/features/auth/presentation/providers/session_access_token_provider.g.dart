// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_access_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Sesión global del token ML.
///
/// KeepAlive: se mantiene en memoria durante la vida de la app.
/// La validez a lo largo de reinicios la resuelve el repository vía
/// SharedPreferences.

@ProviderFor(sessionAccessToken)
final sessionAccessTokenProvider = SessionAccessTokenProvider._();

/// Sesión global del token ML.
///
/// KeepAlive: se mantiene en memoria durante la vida de la app.
/// La validez a lo largo de reinicios la resuelve el repository vía
/// SharedPreferences.

final class SessionAccessTokenProvider
    extends
        $FunctionalProvider<
          AsyncValue<AccessToken>,
          AccessToken,
          FutureOr<AccessToken>
        >
    with $FutureModifier<AccessToken>, $FutureProvider<AccessToken> {
  /// Sesión global del token ML.
  ///
  /// KeepAlive: se mantiene en memoria durante la vida de la app.
  /// La validez a lo largo de reinicios la resuelve el repository vía
  /// SharedPreferences.
  SessionAccessTokenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionAccessTokenProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionAccessTokenHash();

  @$internal
  @override
  $FutureProviderElement<AccessToken> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AccessToken> create(Ref ref) {
    return sessionAccessToken(ref);
  }
}

String _$sessionAccessTokenHash() =>
    r'839e148d2a1ec936b0037268062b25d324379a8f';

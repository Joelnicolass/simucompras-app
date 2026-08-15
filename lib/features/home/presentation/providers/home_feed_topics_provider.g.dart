// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_topics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(homeFeedTopics)
final homeFeedTopicsProvider = HomeFeedTopicsProvider._();

final class HomeFeedTopicsProvider
    extends
        $FunctionalProvider<
          (String, String),
          (String, String),
          (String, String)
        >
    with $Provider<(String, String)> {
  HomeFeedTopicsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeFeedTopicsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeFeedTopicsHash();

  @$internal
  @override
  $ProviderElement<(String, String)> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  (String, String) create(Ref ref) {
    return homeFeedTopics(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue((String, String) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<(String, String)>(value),
    );
  }
}

String _$homeFeedTopicsHash() => r'03a39c5b98de84b1aea1539b9c6689a8e30468bc';

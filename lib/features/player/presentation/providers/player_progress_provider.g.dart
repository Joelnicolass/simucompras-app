// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_progress_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PlayerLevel)
final playerLevelProvider = PlayerLevelProvider._();

final class PlayerLevelProvider
    extends $AsyncNotifierProvider<PlayerLevel, PlayerProgress> {
  PlayerLevelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playerLevelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playerLevelHash();

  @$internal
  @override
  PlayerLevel create() => PlayerLevel();
}

String _$playerLevelHash() => r'1ef62974fcbd37d4f4790b023550519581212685';

abstract class _$PlayerLevel extends $AsyncNotifier<PlayerProgress> {
  FutureOr<PlayerProgress> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<PlayerProgress>, PlayerProgress>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PlayerProgress>, PlayerProgress>,
              AsyncValue<PlayerProgress>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

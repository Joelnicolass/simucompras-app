// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_challenge_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WeeklyChallengeController)
final weeklyChallengeControllerProvider = WeeklyChallengeControllerProvider._();

final class WeeklyChallengeControllerProvider
    extends $AsyncNotifierProvider<WeeklyChallengeController, WeeklyChallenge> {
  WeeklyChallengeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weeklyChallengeControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weeklyChallengeControllerHash();

  @$internal
  @override
  WeeklyChallengeController create() => WeeklyChallengeController();
}

String _$weeklyChallengeControllerHash() =>
    r'19216f427c9e6079740d06eeb5bc1893867d163e';

abstract class _$WeeklyChallengeController
    extends $AsyncNotifier<WeeklyChallenge> {
  FutureOr<WeeklyChallenge> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<WeeklyChallenge>, WeeklyChallenge>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<WeeklyChallenge>, WeeklyChallenge>,
              AsyncValue<WeeklyChallenge>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

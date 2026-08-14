// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'missions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Missions)
final missionsProvider = MissionsProvider._();

final class MissionsProvider
    extends $AsyncNotifierProvider<Missions, List<Mission>> {
  MissionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'missionsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$missionsHash();

  @$internal
  @override
  Missions create() => Missions();
}

String _$missionsHash() => r'0a77959d09311b86266ddb28c29943f8eed8948b';

abstract class _$Missions extends $AsyncNotifier<List<Mission>> {
  FutureOr<List<Mission>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Mission>>, List<Mission>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Mission>>, List<Mission>>,
              AsyncValue<List<Mission>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_history_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PurchaseHistory)
final purchaseHistoryProvider = PurchaseHistoryProvider._();

final class PurchaseHistoryProvider
    extends $AsyncNotifierProvider<PurchaseHistory, List<PurchaseRecord>> {
  PurchaseHistoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'purchaseHistoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$purchaseHistoryHash();

  @$internal
  @override
  PurchaseHistory create() => PurchaseHistory();
}

String _$purchaseHistoryHash() => r'902d27fe4378ce47a40c857ff3a18d40f1010b17';

abstract class _$PurchaseHistory extends $AsyncNotifier<List<PurchaseRecord>> {
  FutureOr<List<PurchaseRecord>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<PurchaseRecord>>, List<PurchaseRecord>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PurchaseRecord>>,
                List<PurchaseRecord>
              >,
              AsyncValue<List<PurchaseRecord>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

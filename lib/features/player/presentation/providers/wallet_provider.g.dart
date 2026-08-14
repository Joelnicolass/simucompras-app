// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Wallet)
final walletProvider = WalletProvider._();

final class WalletProvider
    extends $AsyncNotifierProvider<Wallet, PlayerWallet> {
  WalletProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'walletProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$walletHash();

  @$internal
  @override
  Wallet create() => Wallet();
}

String _$walletHash() => r'caeb44a1ec44d56cc5ef80af0874961bb522a3ee';

abstract class _$Wallet extends $AsyncNotifier<PlayerWallet> {
  FutureOr<PlayerWallet> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<PlayerWallet>, PlayerWallet>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PlayerWallet>, PlayerWallet>,
              AsyncValue<PlayerWallet>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

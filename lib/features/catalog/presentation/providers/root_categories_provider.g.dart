// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_categories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Categorías raíz MLA. Espera sesión válida antes de llamar a MeLi.
///
/// keepAlive: el carrusel de la home se desmonta al scrollear; sin esto el
/// provider se descarta y repite la request.

@ProviderFor(rootCategories)
final rootCategoriesProvider = RootCategoriesProvider._();

/// Categorías raíz MLA. Espera sesión válida antes de llamar a MeLi.
///
/// keepAlive: el carrusel de la home se desmonta al scrollear; sin esto el
/// provider se descarta y repite la request.

final class RootCategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Category>>,
          List<Category>,
          FutureOr<List<Category>>
        >
    with $FutureModifier<List<Category>>, $FutureProvider<List<Category>> {
  /// Categorías raíz MLA. Espera sesión válida antes de llamar a MeLi.
  ///
  /// keepAlive: el carrusel de la home se desmonta al scrollear; sin esto el
  /// provider se descarta y repite la request.
  RootCategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rootCategoriesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rootCategoriesHash();

  @$internal
  @override
  $FutureProviderElement<List<Category>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Category>> create(Ref ref) {
    return rootCategories(ref);
  }
}

String _$rootCategoriesHash() => r'73f14dc63c8bdac4ad5400e858ad7df32a51b01d';

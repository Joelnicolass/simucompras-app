import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/components/skeletons.dart';
import '../components/product_results_grid.dart';
import '../providers/search_results_provider.dart';

/// Búsqueda de productos: barra editable + grilla de resultados.
class SearchView extends StatefulWidget {
  const SearchView({super.key, this.initialQuery = ''});

  final String initialQuery;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late final TextEditingController _controller = TextEditingController(
    text: widget.initialQuery,
  );

  /// Query confirmada con "buscar"; dispara el provider.
  late String _submitted = widget.initialQuery.trim();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit(String value) {
    final query = value.trim();
    if (query.isEmpty || query == _submitted) return;
    setState(() => _submitted = query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MeliColors.background,
      body: Column(
        children: [
          _SearchHeader(
            controller: _controller,
            autofocus: widget.initialQuery.trim().isEmpty,
            onSubmitted: _submit,
          ),
          Expanded(
            child: _submitted.isEmpty
                ? const _SearchIdleHint()
                : _SearchResults(query: _submitted),
          ),
        ],
      ),
    );
  }
}

class _SearchHeader extends StatelessWidget {
  const _SearchHeader({
    required this.controller,
    required this.autofocus,
    required this.onSubmitted,
  });

  final TextEditingController controller;
  final bool autofocus;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;

    return Material(
      color: MeliColors.brand,
      child: Padding(
        padding: EdgeInsets.fromLTRB(4, top + 8, 12, 10),
        child: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).maybePop(),
              icon: const Icon(Icons.arrow_back),
              color: MeliColors.textDark,
            ),
            Expanded(
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: MeliColors.surface,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 20,
                      color: MeliColors.textSecondary,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: controller,
                        autofocus: autofocus,
                        textInputAction: TextInputAction.search,
                        onSubmitted: onSubmitted,
                        style: const TextStyle(
                          fontSize: 14,
                          color: MeliColors.textDark,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Estoy buscando…',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: MeliColors.textSecondary,
                          ),
                          isDense: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchIdleHint extends StatelessWidget {
  const _SearchIdleHint();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.search, size: 48, color: MeliColors.textMuted),
            SizedBox(height: 12),
            Text(
              'Buscá productos, marcas y más',
              style: TextStyle(
                fontSize: 15,
                color: MeliColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchResults extends ConsumerWidget {
  const _SearchResults({required this.query});

  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(searchResultsProvider(query: query));

    return results.when(
      data: (data) {
        if (data.products.isEmpty) {
          return const Center(
            child: Text(
              'No encontramos publicaciones\npara esa búsqueda',
              textAlign: TextAlign.center,
              style: TextStyle(color: MeliColors.textSecondary),
            ),
          );
        }
        return ProductResultsGrid(
          products: data.products,
          padding: const EdgeInsets.all(8),
          showFooterLoader: data.hasMore,
          onEndReached: () => ref
              .read(searchResultsProvider(query: query).notifier)
              .loadMore(),
        );
      },
      loading: () => const ProductGridSkeleton(
        padding: EdgeInsets.all(8),
      ),
      error: (error, _) => ErrorRetry(
        message: error.toString(),
        onRetry: () => ref.invalidate(searchResultsProvider(query: query)),
      ),
    );
  }
}

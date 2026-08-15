import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/game_config.dart';
import '../../../../core/theme/meli_colors.dart';
import '../../../../shared/components/app_feedback.dart';
import '../../../../shared/components/app_loader.dart';
import '../../../../shared/components/error_retry.dart';
import '../../../../shared/components/inventory_line_card.dart';
import '../../../../shared/utils/price_format.dart';
import '../../domain/entities/purchase_record.dart';
import '../providers/purchase_history_provider.dart';
import '../providers/wallet_provider.dart';

/// Inventario comprado: revender unidades a un % del precio pagado.
class MyPurchasesView extends ConsumerWidget {
  const MyPurchasesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(purchaseHistoryProvider);

    return Scaffold(
      backgroundColor: MeliColors.background,
      appBar: AppBar(
        backgroundColor: MeliColors.brand,
        foregroundColor: MeliColors.textDark,
        title: const Text(
          'Mis compras',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        automaticallyImplyLeading: false,
      ),
      body: history.when(
        data: (records) {
          final items = _flattenAvailable(records);
          if (items.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 48,
                      color: MeliColors.textMuted,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Todavía no compraste nada',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Cuando compres, vas a poder poner tus productos a la venta acá.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: MeliColors.textSecondary),
                    ),
                  ],
                ),
              ),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final item = items[index];
              return _InventorySellTile(item: item);
            },
          );
        },
        loading: () => const AppLoader(message: 'Cargando compras…'),
        error: (e, _) => ErrorRetry(
          message: e.toString(),
          onRetry: () => ref.invalidate(purchaseHistoryProvider),
        ),
      ),
    );
  }

  static List<InventoryItem> _flattenAvailable(List<PurchaseRecord> records) {
    final out = <InventoryItem>[];
    for (final r in records) {
      for (final line in r.lines) {
        if (line.availableQuantity > 0) {
          out.add(
            InventoryItem(
              orderId: r.id,
              purchasedAt: r.purchasedAt,
              line: line,
            ),
          );
        }
      }
    }
    return out;
  }
}

class _InventorySellTile extends ConsumerStatefulWidget {
  const _InventorySellTile({required this.item});

  final InventoryItem item;

  @override
  ConsumerState<_InventorySellTile> createState() => _InventorySellTileState();
}

class _InventorySellTileState extends ConsumerState<_InventorySellTile> {
  bool _selling = false;

  @override
  Widget build(BuildContext context) {
    final line = widget.item.line;
    final resale = GameConfig.resalePesosFor(line.productId, line.unitPrice);

    return InventoryLineCard(
      title: line.title,
      imageUrl: line.thumbnailUrl,
      paidPriceText: PriceFormat.ars(line.unitPrice),
      resalePriceText: PriceFormat.ars(resale.toDouble()),
      quantityLabel: line.availableQuantity > 1
          ? '${line.availableQuantity} disponibles'
          : null,
      isSuperOffer: line.isSuperOffer,
      selling: _selling,
      onSell: () => _sell(context),
    );
  }

  Future<void> _sell(BuildContext context) async {
    if (_selling) return;
    setState(() => _selling = true);
    try {
      final result = await ref.read(purchaseHistoryProvider.notifier).sellUnit(
            orderId: widget.item.orderId,
            productId: widget.item.line.productId,
          );
      ref.invalidate(walletProvider);
      if (context.mounted) {
        AppFeedback.showSuccess(
          context,
          'Vendiste “${result.productTitle}” · +${PriceFormat.ars(result.creditedPesos.toDouble())}',
        );
      }
    } catch (e) {
      if (context.mounted) {
        AppFeedback.showError(context, e.toString());
      }
    } finally {
      if (mounted) setState(() => _selling = false);
    }
  }
}

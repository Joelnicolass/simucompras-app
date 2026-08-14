import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injector.dart';
import '../../domain/entities/purchase_record.dart';
import '../../domain/usecases/get_purchase_history.dart';

part 'purchase_history_provider.g.dart';

@Riverpod(keepAlive: true)
class PurchaseHistory extends _$PurchaseHistory {
  @override
  Future<List<PurchaseRecord>> build() {
    return getIt<GetPurchaseHistory>()();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}

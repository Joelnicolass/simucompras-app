import '../entities/purchase_record.dart';
import '../repositories/player_repository.dart';

class GetPurchaseHistory {
  const GetPurchaseHistory(this._repository);
  final PlayerRepository _repository;

  Future<List<PurchaseRecord>> call() => _repository.getPurchaseHistory();
}

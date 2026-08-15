import '../entities/purchase_record.dart';
import '../repositories/player_repository.dart';

class AddPurchase {
  const AddPurchase(this._repository);
  final PlayerRepository _repository;

  Future<void> call(PurchaseRecord record) => _repository.addPurchase(record);
}

/// Contrato para debitar pesos sin acoplar cart → player repository concreto.
abstract interface class PesosAccount {
  Future<int> availablePesos();
  Future<void> debit(int amount);
}

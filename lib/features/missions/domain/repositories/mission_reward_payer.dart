/// Crédito de recompensas de misiones (implementado por player vía adapter).
abstract interface class MissionRewardPayer {
  Future<void> pay(int pesos);
}

/// Knobs centralizados del simulador-juego.
///
/// Todo lo aleatorio / económico del clone lee de acá — no literals dispersos.
abstract final class GameConfig {
  // --- Wallet ---
  static const int initialBalancePesos = 1_000_000;
  static const int dailyTopUpPesos = 50_000;

  // --- Precios simulados (sin buy box MeLi) ---
  static const double priceMin = 10_000;
  static const double priceMax = 1_000_000;
  static const int priceRoundTo = 1000;

  // --- Super oferta (modifier de juego) ---
  /// ~2.5% por producto/día (antes 8%: aparecía demasiado).
  static const double superOfferChance = 0.025;
  static const double superOfferMinDiscount = 0.40;
  static const double superOfferMaxDiscount = 0.75;
  static const int expensiveThresholdPesos = 200_000;

  // --- Home / historial ---
  static const int maxStoredSearches = 20;
  static const int homeTopicsFromHistory = 2;

  static const fallbackTopics = <String>[
    'smart tv',
    'heladera',
    'notebook',
    'auriculares',
    'zapatillas',
    'playstation',
    'xbox',
    'nintendo switch',
    'celular samsung',
    'iphone',
    'tablet',
    'microondas',
    'lavarropas',
    'aire acondicionado',
    'perfume',
    'remera',
    'pantalon',
    'zapatos',
    'mochila',
    'reloj',
    'cafetera',
    'aspiradora',
    'monitor',
    'teclado gamer',
    'mouse gamer',
    'silla gamer',
    'bicicleta',
    'pelota futbol',
    'maquillaje',
    'shampoo',
  ];

  // --- Carrito ---
  static const int maxQuantityPerLine = 10;

  // --- Misiones ---
  static const int activeMissionSlots = 3;
  static const int missionRewardPesos = 25_000;
  static const int missionRewardPesosLo = 15_000;
  static const int missionRewardPesosHi = 40_000;
  static const int missionBuyExpensiveMin = 300_000;
  static const double missionCheapDealMinDiscount = 0.40;

  // --- Favoritos ---
  static const int maxFavorites = 100;

  // --- Historial de compras ---
  static const int maxPurchaseHistory = 50;
}

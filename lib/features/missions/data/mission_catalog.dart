import 'dart:math';

import '../../../core/config/game_config.dart';
import '../../../shared/catalog/meli_category_ids.dart';
import '../domain/entities/mission.dart';

/// Catálogo amplio de misiones (plantillas).
///
/// [MissionsRepositoryImpl.ensureSeeded] elige [GameConfig.activeMissionSlots]
/// al azar entre las que aún no están abiertas.
abstract final class MissionCatalog {
  /// Todas las plantillas con ids únicos por [stamp].
  static List<Mission> all(int stamp) {
    const reward = GameConfig.missionRewardPesos;
    const rewardHi = GameConfig.missionRewardPesosHi;
    const rewardLo = GameConfig.missionRewardPesosLo;

    return [
      // --- Súper oferta ---
      Mission.findSuperOffer(
        id: 'm_super_$stamp',
        title: 'Cazador de ofertas',
        description: 'Comprá un producto con súper oferta.',
        rewardPesos: rewardHi,
      ),
      Mission.findSuperOffer(
        id: 'm_super_flash_$stamp',
        title: 'Flash del día',
        description: 'Encontrá y comprá una súper oferta.',
        rewardPesos: rewardHi,
      ),

      // --- Caro ---
      Mission.buyExpensive(
        id: 'm_exp_150_$stamp',
        minPrice: 150_000,
        title: 'Compra intermedia',
        description: 'Comprá algo de al menos \$150.000.',
        rewardPesos: reward,
      ),
      Mission.buyExpensive(
        id: 'm_exp_200_$stamp',
        minPrice: 200_000,
        title: 'Inversión seria',
        description: 'Comprá algo de al menos \$200.000.',
        rewardPesos: reward,
      ),
      Mission.buyExpensive(
        id: 'm_exp_300_$stamp',
        minPrice: 300_000,
        title: 'Gran compra',
        description: 'Comprá algo de al menos \$300.000.',
        rewardPesos: rewardHi,
      ),
      Mission.buyExpensive(
        id: 'm_exp_500_$stamp',
        minPrice: 500_000,
        title: 'Compra premium',
        description: 'Comprá algo de al menos \$500.000.',
        rewardPesos: rewardHi,
      ),
      Mission.buyExpensive(
        id: 'm_exp_750_$stamp',
        minPrice: 750_000,
        title: 'Lujo accesible',
        description: 'Comprá algo de al menos \$750.000.',
        rewardPesos: rewardHi,
      ),

      // --- Descuento ---
      Mission.buyCheapDeal(
        id: 'm_deal_30_$stamp',
        minDiscount: 0.30,
        title: 'Buen descuento',
        description: 'Comprá con al menos 30% de descuento.',
        rewardPesos: reward,
      ),
      Mission.buyCheapDeal(
        id: 'm_deal_40_$stamp',
        minDiscount: 0.40,
        title: 'Remate',
        description: 'Comprá con al menos 40% de descuento.',
        rewardPesos: reward,
      ),
      Mission.buyCheapDeal(
        id: 'm_deal_50_$stamp',
        minDiscount: 0.50,
        title: 'Mitad de precio',
        description: 'Comprá con al menos 50% de descuento.',
        rewardPesos: rewardHi,
      ),

      // --- Keywords (variedad de búsqueda) ---
      ..._keywords.map(
        (k) => Mission.buyKeyword(
          id: 'm_kw_${k.id}_$stamp',
          keyword: k.keyword,
          title: k.title,
          description: k.description,
          rewardPesos: k.highReward ? rewardHi : rewardLo,
        ),
      ),

      // --- Categorías raíz MLA ---
      ..._categories.map(
        (c) => Mission.buyCategory(
          id: 'm_cat_${c.id}_$stamp',
          categoryId: c.categoryId,
          title: c.title,
          description: c.description,
          rewardPesos: reward,
        ),
      ),
    ];
  }

  /// Elige [count] misiones frescas, evitando títulos ya abiertos.
  static List<Mission> pick({
    required int stamp,
    required int count,
    required Set<String> excludeTitles,
  }) {
    final pool = all(stamp)
        .where((m) => !excludeTitles.contains(m.title))
        .toList()
      ..shuffle(Random(stamp));
    if (pool.isEmpty) {
      // Si se agotaron títulos, regenera sin filtro (ids nuevos por stamp).
      return (all(stamp)..shuffle(Random(stamp ^ 0x9E3779B9))).take(count).toList();
    }
    return pool.take(count).toList();
  }
}

typedef _Kw = ({
  String id,
  String keyword,
  String title,
  String description,
  bool highReward,
});

typedef _Cat = ({
  String id,
  String categoryId,
  String title,
  String description,
});

const _keywords = <_Kw>[
  (
    id: 'tv',
    keyword: 'tv',
    title: 'Noche de series',
    description: 'Comprá un producto relacionado a TV.',
    highReward: false,
  ),
  (
    id: 'notebook',
    keyword: 'notebook',
    title: 'Home office',
    description: 'Comprá una notebook.',
    highReward: true,
  ),
  (
    id: 'auriculares',
    keyword: 'auriculares',
    title: 'Modo focus',
    description: 'Comprá unos auriculares.',
    highReward: false,
  ),
  (
    id: 'zapatillas',
    keyword: 'zapatillas',
    title: 'Salí a correr',
    description: 'Comprá un par de zapatillas.',
    highReward: false,
  ),
  (
    id: 'heladera',
    keyword: 'heladera',
    title: 'Cocina fría',
    description: 'Comprá una heladera.',
    highReward: true,
  ),
  (
    id: 'celular',
    keyword: 'celular',
    title: 'Upgrade móvil',
    description: 'Comprá un celular.',
    highReward: true,
  ),
  (
    id: 'iphone',
    keyword: 'iphone',
    title: 'Fan de la manzana',
    description: 'Comprá un iPhone.',
    highReward: true,
  ),
  (
    id: 'samsung',
    keyword: 'samsung',
    title: 'Galaxy hunter',
    description: 'Comprá un producto Samsung.',
    highReward: false,
  ),
  (
    id: 'playstation',
    keyword: 'playstation',
    title: 'Gamer PS',
    description: 'Comprá algo de PlayStation.',
    highReward: true,
  ),
  (
    id: 'xbox',
    keyword: 'xbox',
    title: 'Gamer Xbox',
    description: 'Comprá algo de Xbox.',
    highReward: true,
  ),
  (
    id: 'nintendo',
    keyword: 'nintendo',
    title: 'Switch time',
    description: 'Comprá algo de Nintendo.',
    highReward: false,
  ),
  (
    id: 'mouse',
    keyword: 'mouse',
    title: 'Click preciso',
    description: 'Comprá un mouse.',
    highReward: false,
  ),
  (
    id: 'teclado',
    keyword: 'teclado',
    title: 'Typing master',
    description: 'Comprá un teclado.',
    highReward: false,
  ),
  (
    id: 'monitor',
    keyword: 'monitor',
    title: 'Más pantallas',
    description: 'Comprá un monitor.',
    highReward: false,
  ),
  (
    id: 'silla',
    keyword: 'silla',
    title: 'Postura gamer',
    description: 'Comprá una silla.',
    highReward: false,
  ),
  (
    id: 'perfume',
    keyword: 'perfume',
    title: 'Buena impresión',
    description: 'Comprá un perfume.',
    highReward: false,
  ),
  (
    id: 'remera',
    keyword: 'remera',
    title: 'Nuevo outfit',
    description: 'Comprá una remera.',
    highReward: false,
  ),
  (
    id: 'pantalon',
    keyword: 'pantalon',
    title: 'Cambio de look',
    description: 'Comprá un pantalón.',
    highReward: false,
  ),
  (
    id: 'mochila',
    keyword: 'mochila',
    title: 'Listo para salir',
    description: 'Comprá una mochila.',
    highReward: false,
  ),
  (
    id: 'reloj',
    keyword: 'reloj',
    title: 'Puntualidad',
    description: 'Comprá un reloj.',
    highReward: false,
  ),
  (
    id: 'cafetera',
    keyword: 'cafetera',
    title: 'Café de la mañana',
    description: 'Comprá una cafetera.',
    highReward: false,
  ),
  (
    id: 'aspiradora',
    keyword: 'aspiradora',
    title: 'Casa limpia',
    description: 'Comprá una aspiradora.',
    highReward: false,
  ),
  (
    id: 'microondas',
    keyword: 'microondas',
    title: 'Calentá rápido',
    description: 'Comprá un microondas.',
    highReward: false,
  ),
  (
    id: 'lavarropas',
    keyword: 'lavarropas',
    title: 'Ropa limpia',
    description: 'Comprá un lavarropas.',
    highReward: true,
  ),
  (
    id: 'aire',
    keyword: 'aire acondicionado',
    title: 'Clima ideal',
    description: 'Comprá un aire acondicionado.',
    highReward: true,
  ),
  (
    id: 'tablet',
    keyword: 'tablet',
    title: 'Pantalla portátil',
    description: 'Comprá una tablet.',
    highReward: false,
  ),
  (
    id: 'bicicleta',
    keyword: 'bicicleta',
    title: 'Pedaleá',
    description: 'Comprá una bicicleta.',
    highReward: true,
  ),
  (
    id: 'pelota',
    keyword: 'pelota',
    title: 'A la cancha',
    description: 'Comprá una pelota.',
    highReward: false,
  ),
  (
    id: 'maquillaje',
    keyword: 'maquillaje',
    title: 'Glow up',
    description: 'Comprá maquillaje.',
    highReward: false,
  ),
  (
    id: 'shampoo',
    keyword: 'shampoo',
    title: 'Cuidado capilar',
    description: 'Comprá shampoo.',
    highReward: false,
  ),
  (
    id: 'parlante',
    keyword: 'parlante',
    title: 'Fiesta en casa',
    description: 'Comprá un parlante.',
    highReward: false,
  ),
  (
    id: 'camara',
    keyword: 'camara',
    title: 'Modo fotógrafo',
    description: 'Comprá una cámara.',
    highReward: false,
  ),
  (
    id: 'drone',
    keyword: 'drone',
    title: 'Vista aérea',
    description: 'Comprá un drone.',
    highReward: true,
  ),
  (
    id: 'impresora',
    keyword: 'impresora',
    title: 'Oficina en casa',
    description: 'Comprá una impresora.',
    highReward: false,
  ),
];

const _categories = <_Cat>[
  (
    id: 'phones',
    categoryId: MeliCategoryIds.phones,
    title: 'Mundo celulares',
    description: 'Comprá en la categoría Celulares.',
  ),
  (
    id: 'computing',
    categoryId: MeliCategoryIds.computing,
    title: 'Tech workstation',
    description: 'Comprá en Computación.',
  ),
  (
    id: 'gaming',
    categoryId: MeliCategoryIds.gaming,
    title: 'Consolas y juegos',
    description: 'Comprá en Consolas y Videojuegos.',
  ),
  (
    id: 'appliances',
    categoryId: MeliCategoryIds.appliances,
    title: 'Electro del hogar',
    description: 'Comprá en Electrodomésticos.',
  ),
  (
    id: 'electronics',
    categoryId: MeliCategoryIds.electronics,
    title: 'Electrónica total',
    description: 'Comprá en Electrónica.',
  ),
  (
    id: 'fashion',
    categoryId: MeliCategoryIds.fashion,
    title: 'Fashion day',
    description: 'Comprá en Ropa y Accesorios.',
  ),
  (
    id: 'sports',
    categoryId: MeliCategoryIds.sports,
    title: 'Deportista',
    description: 'Comprá en Deportes y Fitness.',
  ),
  (
    id: 'beauty',
    categoryId: MeliCategoryIds.beauty,
    title: 'Belleza',
    description: 'Comprá en Belleza y Cuidado Personal.',
  ),
  (
    id: 'home',
    categoryId: MeliCategoryIds.homeAndGarden,
    title: 'Hogar & Jardín',
    description: 'Comprá en Hogar, Muebles y Jardín.',
  ),
  (
    id: 'toys',
    categoryId: MeliCategoryIds.toys,
    title: 'Juguetería',
    description: 'Comprá en Juegos y Juguetes.',
  ),
  (
    id: 'tools',
    categoryId: MeliCategoryIds.tools,
    title: 'Manitas',
    description: 'Comprá en Herramientas.',
  ),
  (
    id: 'cameras',
    categoryId: MeliCategoryIds.cameras,
    title: 'Cámaras',
    description: 'Comprá en Cámaras y Accesorios.',
  ),
];

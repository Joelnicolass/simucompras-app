import 'dart:math';

/// Queries de las secciones de productos de la home.
///
/// La variedad se elige con [pairFor] a partir del seed de browse, así no
/// cambia en cada rebuild (solo al iniciar / pull-to-refresh).
abstract final class HomeFeedQueries {
  static const topics = <String>[
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

  /// Dos queries distintas y estables para un [seed] dado.
  static (String first, String second) pairFor(int seed) {
    if (topics.isEmpty) {
      return ('smart tv', 'heladera');
    }

    final random = Random(seed);
    final firstIndex = random.nextInt(topics.length);
    var secondIndex = random.nextInt(topics.length);
    if (topics.length > 1) {
      while (secondIndex == firstIndex) {
        secondIndex = random.nextInt(topics.length);
      }
    }

    return (topics[firstIndex], topics[secondIndex]);
  }
}

/// Queries fijas de las secciones de productos de la home.
///
/// Centralizadas para que el pull-to-refresh espere los mismos providers
/// que renderizan las secciones.
abstract final class HomeFeedQueries {
  static const inspired = 'smart tv';
  static const related = 'heladera';

  static const all = [inspired, related];
}

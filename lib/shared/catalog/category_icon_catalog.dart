import 'category_icon_kind.dart';
import 'meli_category_ids.dart';

/// Regla declarativa: id(s) MeLi y/o keywords → [CategoryIconKind].
///
/// La resolución prioriza match por id; los keywords son fallback
/// (subcategorías o nombres sin id conocido).
class CategoryIconRule {
  const CategoryIconRule({
    required this.kind,
    this.categoryIds = const {},
    this.keywords = const {},
  });

  final CategoryIconKind kind;
  final Set<String> categoryIds;
  final Set<String> keywords;

  bool matchesId(String categoryId) => categoryIds.contains(categoryId);

  bool matchesKeywords(String normalizedName) {
    if (keywords.isEmpty || normalizedName.isEmpty) return false;
    for (final keyword in keywords) {
      if (normalizedName.contains(keyword)) return true;
    }
    return false;
  }
}

/// Catálogo central de reglas de íconos (escalable: agregar una regla y listo).
abstract final class CategoryIconCatalog {
  static const List<CategoryIconRule> rules = [
    CategoryIconRule(
      kind: CategoryIconKind.vehiclesAccessories,
      categoryIds: {MeliCategoryIds.vehiclesAccessories},
      keywords: {
        CategoryIconKeywords.vehicleAccessories,
        CategoryIconKeywords.autoParts,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.agro,
      categoryIds: {MeliCategoryIds.agro},
      keywords: {CategoryIconKeywords.agro},
    ),
    CategoryIconRule(
      kind: CategoryIconKind.foodAndDrinks,
      categoryIds: {MeliCategoryIds.foodAndDrinks},
      keywords: {
        CategoryIconKeywords.food,
        CategoryIconKeywords.drinks,
        CategoryIconKeywords.supermarket,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.pets,
      categoryIds: {MeliCategoryIds.pets},
      keywords: {
        CategoryIconKeywords.pets,
        CategoryIconKeywords.animals,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.antiques,
      categoryIds: {MeliCategoryIds.antiques},
      keywords: {
        CategoryIconKeywords.antiques,
        CategoryIconKeywords.collections,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.artAndStationery,
      categoryIds: {MeliCategoryIds.artAndStationery},
      keywords: {
        CategoryIconKeywords.art,
        CategoryIconKeywords.stationery,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.carsAndMotorcycles,
      categoryIds: {MeliCategoryIds.carsAndMotorcycles},
      keywords: {
        CategoryIconKeywords.cars,
        CategoryIconKeywords.motorcycles,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.babies,
      categoryIds: {MeliCategoryIds.babies},
      keywords: {CategoryIconKeywords.babies},
    ),
    CategoryIconRule(
      kind: CategoryIconKind.beauty,
      categoryIds: {MeliCategoryIds.beauty},
      keywords: {
        CategoryIconKeywords.beauty,
        CategoryIconKeywords.personalCare,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.cameras,
      categoryIds: {MeliCategoryIds.cameras},
      keywords: {
        CategoryIconKeywords.cameras,
        CategoryIconKeywords.photo,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.phones,
      categoryIds: {
        MeliCategoryIds.phones,
        MeliCategoryIds.smartphones,
      },
      keywords: {
        CategoryIconKeywords.phones,
        CategoryIconKeywords.cellphones,
        CategoryIconKeywords.smartphones,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.computing,
      categoryIds: {MeliCategoryIds.computing},
      keywords: {
        CategoryIconKeywords.computing,
        CategoryIconKeywords.notebook,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.gaming,
      categoryIds: {MeliCategoryIds.gaming},
      keywords: {
        CategoryIconKeywords.gaming,
        CategoryIconKeywords.consoles,
        CategoryIconKeywords.videogames,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.construction,
      categoryIds: {MeliCategoryIds.construction},
      keywords: {CategoryIconKeywords.construction},
    ),
    CategoryIconRule(
      kind: CategoryIconKind.sports,
      categoryIds: {MeliCategoryIds.sports},
      keywords: {
        CategoryIconKeywords.sports,
        CategoryIconKeywords.fitness,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.appliances,
      categoryIds: {MeliCategoryIds.appliances},
      keywords: {
        CategoryIconKeywords.appliances,
        CategoryIconKeywords.airConditioning,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.electronics,
      categoryIds: {MeliCategoryIds.electronics},
      keywords: {
        CategoryIconKeywords.electronics,
        CategoryIconKeywords.audio,
        CategoryIconKeywords.video,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.events,
      categoryIds: {MeliCategoryIds.events},
      keywords: {
        CategoryIconKeywords.events,
        CategoryIconKeywords.tickets,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.tools,
      categoryIds: {MeliCategoryIds.tools},
      keywords: {CategoryIconKeywords.tools},
    ),
    CategoryIconRule(
      kind: CategoryIconKind.homeAndGarden,
      categoryIds: {MeliCategoryIds.homeAndGarden},
      keywords: {
        CategoryIconKeywords.home,
        CategoryIconKeywords.furniture,
        CategoryIconKeywords.garden,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.industry,
      categoryIds: {MeliCategoryIds.industry},
      keywords: {
        CategoryIconKeywords.industry,
        CategoryIconKeywords.offices,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.realEstate,
      categoryIds: {MeliCategoryIds.realEstate},
      keywords: {
        CategoryIconKeywords.realEstate,
        CategoryIconKeywords.properties,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.musicalInstruments,
      categoryIds: {MeliCategoryIds.musicalInstruments},
      keywords: {CategoryIconKeywords.musicalInstruments},
    ),
    CategoryIconRule(
      kind: CategoryIconKind.jewelry,
      categoryIds: {MeliCategoryIds.jewelry},
      keywords: {
        CategoryIconKeywords.jewelry,
        CategoryIconKeywords.watches,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.toys,
      categoryIds: {MeliCategoryIds.toys},
      keywords: {
        CategoryIconKeywords.toys,
        CategoryIconKeywords.games,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.books,
      categoryIds: {MeliCategoryIds.books},
      keywords: {
        CategoryIconKeywords.books,
        CategoryIconKeywords.magazines,
        CategoryIconKeywords.comics,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.musicAndMovies,
      categoryIds: {MeliCategoryIds.musicAndMovies},
      keywords: {
        CategoryIconKeywords.music,
        CategoryIconKeywords.movies,
        CategoryIconKeywords.series,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.fashion,
      categoryIds: {MeliCategoryIds.fashion},
      keywords: {
        CategoryIconKeywords.fashion,
        CategoryIconKeywords.clothing,
        CategoryIconKeywords.accessories,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.health,
      categoryIds: {MeliCategoryIds.health},
      keywords: {
        CategoryIconKeywords.health,
        CategoryIconKeywords.medical,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.services,
      categoryIds: {MeliCategoryIds.services},
      keywords: {CategoryIconKeywords.services},
    ),
    CategoryIconRule(
      kind: CategoryIconKind.parties,
      categoryIds: {MeliCategoryIds.parties},
      keywords: {
        CategoryIconKeywords.parties,
        CategoryIconKeywords.souvenirs,
      },
    ),
    CategoryIconRule(
      kind: CategoryIconKind.other,
      categoryIds: {MeliCategoryIds.other},
      keywords: {CategoryIconKeywords.other},
    ),
  ];

  /// Índice por category id (construcción lazy).
  static final Map<String, CategoryIconKind> byCategoryId = {
    for (final rule in rules)
      for (final id in rule.categoryIds) id: rule.kind,
  };
}

/// Keywords normalizadas (sin tildes, minúsculas) reutilizables.
abstract final class CategoryIconKeywords {
  static const vehicleAccessories = 'accesorios para vehiculos';
  static const autoParts = 'repuestos';
  static const agro = 'agro';
  static const food = 'alimento';
  static const drinks = 'bebida';
  static const supermarket = 'supermercado';
  static const pets = 'mascota';
  static const animals = 'animales';
  static const antiques = 'antiguedades';
  static const collections = 'colecciones';
  static const art = 'arte';
  static const stationery = 'libreria';
  static const cars = 'autos';
  static const motorcycles = 'motos';
  static const babies = 'bebes';
  static const beauty = 'belleza';
  static const personalCare = 'cuidado personal';
  static const cameras = 'camaras';
  static const photo = 'foto';
  static const phones = 'telefonos';
  static const cellphones = 'celulares';
  static const smartphones = 'smartphones';
  static const computing = 'computacion';
  static const notebook = 'notebook';
  static const gaming = 'gaming';
  static const consoles = 'consolas';
  static const videogames = 'videojuegos';
  static const construction = 'construccion';
  static const sports = 'deportes';
  static const fitness = 'fitness';
  static const appliances = 'electrodomesticos';
  static const airConditioning = 'aires';
  static const electronics = 'electronica';
  static const audio = 'audio';
  static const video = 'video';
  static const events = 'eventos';
  static const tickets = 'entradas';
  static const tools = 'herramientas';
  static const home = 'hogar';
  static const furniture = 'muebles';
  static const garden = 'jardin';
  static const industry = 'industrias';
  static const offices = 'oficinas';
  static const realEstate = 'inmuebles';
  static const properties = 'propiedades';
  static const musicalInstruments = 'instrumentos musicales';
  static const jewelry = 'joyas';
  static const watches = 'relojes';
  static const toys = 'juguetes';
  static const games = 'juegos';
  static const books = 'libros';
  static const magazines = 'revistas';
  static const comics = 'comics';
  static const music = 'musica';
  static const movies = 'peliculas';
  static const series = 'series';
  static const fashion = 'ropa';
  static const clothing = 'indumentaria';
  static const accessories = 'accesorios';
  static const health = 'salud';
  static const medical = 'medico';
  static const services = 'servicios';
  static const parties = 'fiestas';
  static const souvenirs = 'souvenirs';
  static const other = 'otras categorias';
}

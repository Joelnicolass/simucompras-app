import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/datasources/auth_local_datasource_impl.dart';
import '../../features/auth/data/datasources/auth_remote_datasource_impl.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/datasources/auth_local_datasource.dart';
import '../../features/auth/domain/datasources/auth_remote_datasource.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/get_access_token.dart';
import '../../features/cart/data/datasources/cart_local_datasource_impl.dart';
import '../../features/cart/data/repositories/cart_repository_impl.dart';
import '../../features/cart/domain/datasources/cart_local_datasource.dart';
import '../../features/cart/domain/repositories/cart_repository.dart';
import '../../features/cart/domain/repositories/pesos_account.dart';
import '../../features/cart/domain/repositories/purchase_recorder.dart';
import '../../features/cart/domain/usecases/add_to_cart.dart';
import '../../features/cart/domain/usecases/checkout.dart';
import '../../features/cart/domain/usecases/get_cart.dart';
import '../../features/cart/domain/usecases/remove_from_cart.dart';
import '../../features/cart/domain/usecases/update_line_qty.dart';
import '../../features/catalog/data/datasources/catalog_remote_datasource_impl.dart';
import '../../features/catalog/data/repositories/catalog_repository_impl.dart';
import '../../features/catalog/domain/datasources/catalog_remote_datasource.dart';
import '../../features/catalog/domain/repositories/catalog_repository.dart';
import '../../features/catalog/domain/usecases/get_category_by_id.dart';
import '../../features/catalog/domain/usecases/get_product_by_id.dart';
import '../../features/catalog/domain/usecases/get_product_offers.dart';
import '../../features/catalog/domain/usecases/get_root_categories.dart';
import '../../features/catalog/domain/usecases/search_products.dart';
import '../../features/missions/data/datasources/missions_local_datasource_impl.dart';
import '../../features/missions/data/repositories/missions_repository_impl.dart';
import '../../features/missions/domain/datasources/missions_local_datasource.dart';
import '../../features/missions/domain/repositories/mission_reward_payer.dart';
import '../../features/missions/domain/repositories/missions_repository.dart';
import '../../features/missions/domain/usecases/claim_mission_rewards.dart';
import '../../features/missions/domain/usecases/evaluate_missions.dart';
import '../../features/missions/domain/usecases/get_active_missions.dart';
import '../../features/player/data/adapters/player_mission_reward_payer.dart';
import '../../features/player/data/adapters/player_pesos_account.dart';
import '../../features/player/data/adapters/player_purchase_recorder.dart';
import '../../features/player/data/datasources/player_local_datasource_impl.dart';
import '../../features/player/data/repositories/player_repository_impl.dart';
import '../../features/player/domain/datasources/player_local_datasource.dart';
import '../../features/player/domain/repositories/player_repository.dart';
import '../../features/player/domain/usecases/add_purchase.dart';
import '../../features/player/domain/usecases/credit_pesos.dart';
import '../../features/player/domain/usecases/ensure_daily_top_up.dart';
import '../../features/player/domain/usecases/get_favorite_ids.dart';
import '../../features/player/domain/usecases/get_purchase_history.dart';
import '../../features/player/domain/usecases/get_recent_searches.dart';
import '../../features/player/domain/usecases/get_wallet.dart';
import '../../features/player/domain/usecases/record_search.dart';
import '../../features/player/domain/usecases/remove_search.dart';
import '../../features/player/domain/usecases/spend_pesos.dart';
import '../../features/player/domain/usecases/toggle_favorite.dart';
import '../config/app_config.dart';
import '../network/api_clients.dart';

final getIt = GetIt.instance;

Future<void> setupInjector() async {
  if (getIt.isRegistered<AuthApiClient>()) {
    return;
  }

  final prefs = await SharedPreferences.getInstance();

  getIt
    ..registerSingleton<SharedPreferences>(prefs)
    ..registerLazySingleton<AuthApiClient>(
      () => AuthApiClient(baseUrl: AppConfig.authApiBaseUrl),
    )
    ..registerLazySingleton<MercadoLibreApiClient>(
      () => MercadoLibreApiClient(baseUrl: AppConfig.mercadoLibreApiBaseUrl),
    );

  _setupAuth();
  _setupCatalog();
  _setupPlayer();
  _setupCart();
  _setupMissions();
}

void _setupAuth() {
  getIt
    ..registerLazySingleton<AuthLocalDatasource>(
      () => AuthLocalDatasourceImpl(getIt()),
    )
    ..registerLazySingleton<AuthRemoteDatasource>(
      () => AuthRemoteDatasourceImpl(getIt()),
    )
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(getIt(), getIt()),
    )
    ..registerFactory(() => GetAccessToken(getIt()));
}

void _setupCatalog() {
  getIt
    ..registerLazySingleton<CatalogRemoteDatasource>(
      () => CatalogRemoteDatasourceImpl(getIt()),
    )
    ..registerLazySingleton<CatalogRepository>(
      () => CatalogRepositoryImpl(getIt(), getIt()),
    )
    ..registerFactory(() => SearchProducts(getIt()))
    ..registerFactory(() => GetProductById(getIt()))
    ..registerFactory(() => GetProductOffers(getIt()))
    ..registerFactory(() => GetRootCategories(getIt()))
    ..registerFactory(() => GetCategoryById(getIt()));
}

void _setupPlayer() {
  getIt
    ..registerLazySingleton<PlayerLocalDatasource>(
      () => PlayerLocalDatasourceImpl(getIt()),
    )
    ..registerLazySingleton<PlayerRepository>(
      () => PlayerRepositoryImpl(getIt()),
    )
    ..registerLazySingleton<PesosAccount>(() => PlayerPesosAccount(getIt()))
    ..registerLazySingleton<PurchaseRecorder>(
      () => PlayerPurchaseRecorder(getIt()),
    )
    ..registerLazySingleton<MissionRewardPayer>(
      () => PlayerMissionRewardPayer(getIt()),
    )
    ..registerFactory(() => GetWallet(getIt()))
    ..registerFactory(() => EnsureDailyTopUp(getIt()))
    ..registerFactory(() => SpendPesos(getIt()))
    ..registerFactory(() => CreditPesos(getIt()))
    ..registerFactory(() => GetRecentSearches(getIt()))
    ..registerFactory(() => RecordSearch(getIt()))
    ..registerFactory(() => RemoveSearch(getIt()))
    ..registerFactory(() => GetPurchaseHistory(getIt()))
    ..registerFactory(() => AddPurchase(getIt()))
    ..registerFactory(() => GetFavoriteIds(getIt()))
    ..registerFactory(() => ToggleFavorite(getIt()));
}

void _setupCart() {
  getIt
    ..registerLazySingleton<CartLocalDatasource>(
      () => CartLocalDatasourceImpl(getIt()),
    )
    ..registerLazySingleton<CartRepository>(
      () => CartRepositoryImpl(getIt()),
    )
    ..registerFactory(() => GetCart(getIt()))
    ..registerFactory(() => AddToCart(getIt()))
    ..registerFactory(() => UpdateLineQty(getIt()))
    ..registerFactory(() => RemoveFromCart(getIt()))
    ..registerFactory(() => Checkout(getIt(), getIt(), getIt()));
}

void _setupMissions() {
  getIt
    ..registerLazySingleton<MissionsLocalDatasource>(
      () => MissionsLocalDatasourceImpl(getIt()),
    )
    ..registerLazySingleton<MissionsRepository>(
      () => MissionsRepositoryImpl(getIt()),
    )
    ..registerFactory(() => GetActiveMissions(getIt()))
    ..registerFactory(() => EvaluateMissions(getIt()))
    ..registerFactory(() => ClaimMissionRewards(getIt(), getIt()));
}

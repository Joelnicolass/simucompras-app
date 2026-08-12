import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/datasources/auth_local_datasource_impl.dart';
import '../../features/auth/data/datasources/auth_remote_datasource_impl.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/datasources/auth_local_datasource.dart';
import '../../features/auth/domain/datasources/auth_remote_datasource.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/get_access_token.dart';
import '../../features/catalog/data/datasources/catalog_remote_datasource_impl.dart';
import '../../features/catalog/data/repositories/catalog_repository_impl.dart';
import '../../features/catalog/domain/datasources/catalog_remote_datasource.dart';
import '../../features/catalog/domain/repositories/catalog_repository.dart';
import '../../features/catalog/domain/usecases/get_category_by_id.dart';
import '../../features/catalog/domain/usecases/get_product_by_id.dart';
import '../../features/catalog/domain/usecases/get_product_offers.dart';
import '../../features/catalog/domain/usecases/get_root_categories.dart';
import '../../features/catalog/domain/usecases/search_products.dart';
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

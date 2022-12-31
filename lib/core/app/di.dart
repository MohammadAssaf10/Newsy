import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:news_app/features/home/data/data_sources/news_local_data_sources.dart';
import 'package:news_app/features/home/data/data_sources/news_remote_data_sources.dart';
import 'package:news_app/features/home/data/repositories/news_repository_impl.dart';
import 'package:news_app/features/home/domain/repositories/news_repository.dart';
import 'package:news_app/features/home/domain/use_cases/get_news.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/home/data/data_sources/news_api.dart';
import '../../features/home/presentation/pages/home/bloc/news_bloc.dart';
import '../network/dio_factory.dart';
import '../network/network_info.dart';

final GetIt sl = GetIt.instance;

Future<void> initAppModule() async {
  // app module, its a module where we put all generic dependencies

  // shared pref instance
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPref);
  // network info
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()));
  // dio factory
  sl.registerLazySingleton<DioFactory>(() => DioFactory());
}

Future<void> initHomeModule() async {
  Dio dio = await sl<DioFactory>().getDio();
  sl.registerLazySingleton<NewsServiceClient>(() => NewsServiceClient(dio));

  // Usecase
  sl.registerLazySingleton<GetNewsUseCase>(
      () => GetNewsUseCase(sl<NewsRepository>()));
  // BLoc
  sl.registerFactory<NewsBloc>(
      () => NewsBloc(getNewsUseCase: sl<GetNewsUseCase>()));
  // Repository
  sl.registerLazySingleton<NewsRepository>(() => NewsRepositoryImpl(
      remoteDataSource: sl<NewsRemoteDataSource>(),
      localDataSources: sl<NewsLocalDataSources>(),
      networkInfo: sl<NetworkInfo>()));
  // DataSources
  sl.registerLazySingleton<NewsRemoteDataSource>(() =>
      NewsRemoteDataSourceImpl(newsServiceClient: sl<NewsServiceClient>()));
  sl.registerLazySingleton<NewsLocalDataSources>(
      () => NewsLocalDataSourcesImpl(sl<SharedPreferences>()));
}

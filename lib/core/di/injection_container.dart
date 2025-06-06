import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mason_demo/features/login/data/data_sources/local/login_local_data_source.dart';
import 'package:mason_demo/features/login/data/data_sources/remote/login_remote_data_source.dart';
import 'package:mason_demo/features/login/data/repositories/login_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/login/domain/repositories/login_repository.dart';
import '../../features/login/domain/use_cases/get_login.dart';
import '../../features/login/presentation/bloc/login_bloc.dart';
import '../adapters/dio_adapter.dart';
import '../network/network_info.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //! Features - Splash
  // Bloc
  getIt.registerFactory(() => LoginBloc());

  // Use cases
  getIt.registerLazySingleton(() => GetLogin(loginRepository: getIt()));

  // Repository
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(
      remoteDataSource: getIt(),
      localDataSource: getIt(),
      networkInfo: getIt(),
    ),
  );

  // Data sources
  getIt.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(dio: getIt()),
  );
  getIt.registerLazySingleton<LoginLocalDataSource>(
    () => LoginLocalDataSourceImpl(localSource: getIt()),
  );

  //! Core
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(getIt()));
  getIt.registerLazySingleton<DioAdapter>(
    () => DioAdapter(internetInfo: getIt()),
  );

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => InternetConnectionChecker.createInstance());
}

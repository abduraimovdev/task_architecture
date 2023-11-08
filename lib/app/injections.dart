import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:task_architecture/features/detail/presentation/bloc/detail_bloc.dart';
import 'package:task_architecture/features/home/data/data_source/product_remote_data_source.dart';
import 'package:task_architecture/features/home/data/repository/product_repo_impl.dart';
import 'package:task_architecture/features/home/domain/repository/product_repo.dart';
import 'package:task_architecture/features/home/domain/usecase/get_banners.dart';
import 'package:task_architecture/features/home/domain/usecase/get_products.dart';
import 'package:task_architecture/features/home/presentation/bloc/home_bloc.dart';

// import 'package:dio/dio.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../utils/core/dio_provider.dart';
// import '/features/home/data/data_source/weather_local_data_source.dart';
// import '/utils/network/network_info.dart';
// import '/features/home/domain/usecases/get_geocode.dart';
// import '/features/home/data/data_source/weather_remote_data_source.dart';
// import '/features/home/data/repository/weather_repo_impl.dart';
// import '/features/home/domain/repository/weather_repo.dart';
// import '/features/home/domain/usecases/get_weather.dart';
// import '/features/home/presentation/bloc/weather_bloc.dart';
import '../utils/network/network_info.dart';
import 'app_router.dart';

final ls = GetIt.instance;

Future<void> setup() async {
  // //Core
  ls.registerSingleton<AppRouter>(AppRouter());

  ls.registerSingleton<InternetConnectionChecker>(InternetConnectionChecker());
  ls.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(ls()));
  //
  /// HomeBloc
  ls.registerFactory<HomeBloc>(
    () => HomeBloc(
      getProducts: ls(),
      getBanners: ls(),
    ),
  );

  /// DetailBloc
  ls.registerFactory<DetailBloc>(DetailBloc.new);
  // repositories
  ls.registerLazySingleton<ProductRepo>(() => ProductRepoImpl(
        networkInfo: ls(),
        remoteDataSource: ls(),
      ));

  // use cases
  ls.registerLazySingleton<GetProducts>(() => GetProducts(repo: ls()));
  ls.registerLazySingleton<GetBanners>(() => GetBanners(repo: ls()));

  // data sources
  ls.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(),
  );
}

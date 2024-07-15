
import 'package:route_tech_task/app/debugger/debugger.dart';
import 'package:route_tech_task/app/managers/language_manager.dart';
import 'package:route_tech_task/app/managers/router_manager.dart';
import 'package:route_tech_task/app/managers/theme_manager.dart';
import 'package:route_tech_task/app/services/internet_service.dart';
import 'package:route_tech_task/data/data_source/local_data_source/shared_preference_source.dart';
import 'package:route_tech_task/data/data_source/remote_data_source.dart';
import 'package:route_tech_task/data/network/app_api.dart';
import 'package:route_tech_task/data/network/dio_factory.dart';
import 'package:route_tech_task/data/repository/repository_impl.dart';
import 'package:route_tech_task/domain/respository/repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> initializeAppDependencies() async {
  // Register your dependencies here
  // Register your services here
  instance.registerSingleton<InternetService>(InternetService());
  await instance<InternetService>().init();

  // Register your local data sources here
  instance.registerLazySingleton<SharedPreferenSource>(() => SharedPreferenSource());
  await instance<SharedPreferenSource>().initialize();

  // Register your managers here
  instance.registerLazySingleton<LanguageManager>(() => LanguageManager(instance<SharedPreferenSource>()));
  instance.registerLazySingleton<RouterManager>(() => RouterManager());
  instance.registerLazySingleton<ThemeManager>(() => ThemeManager(instance<SharedPreferenSource>()));
  
  // Register your DioFactory here
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance<LanguageManager>()));
  Dio dio = instance<DioFactory>().create();

  //app service client
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
  // Register your data sources here
  instance.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(instance<AppServiceClient>()));
  
  // Register your repositories here
  instance.registerLazySingleton<Repository>(() => RepositoryImpl(instance<RemoteDataSource>(), instance<InternetService>()));

  // Register your Logger here
  instance.registerLazySingleton<Debugger>(() => Debugger());

  // Register Global Key of Navigator State to get Context from any place
  instance.registerSingleton<GlobalKey<NavigatorState>>(GlobalKey<NavigatorState>());
  instance.registerSingleton<GlobalKey<ScaffoldMessengerState>>(GlobalKey<ScaffoldMessengerState>());

}
part of 'config.dart';

final store = GetIt.instance;

Future<void> initDi() async {
  //! Onboarding

  // Cubit
  store.registerFactory(() => OnboardingCubit(items: OnboardingData.items));
  store.registerLazySingleton<Dio>(() => Dio());
  store.registerLazySingleton<DioConsumer>(
    () => DioConsumer(dio: store<Dio>()),
  );

  // Register CacheHelper as a singleton

  store.registerLazySingleton<CacheHelper>(() => CacheHelper()..init());
  // provider
  store.registerFactory<RegisterProvider>(
    () => RegisterProvider(apiConsumer: store<DioConsumer>()),
  );
  store.registerFactory<LoginProvider>(
    () => LoginProvider(apiConsumer: store<DioConsumer>()),
  );
  store.registerSingleton<ProductProvider>(
    ProductProvider(apiConsumer: store<DioConsumer>()),
  );
  store.registerFactory<ChatProvider>(
    () => ChatProvider(dio: store<Dio>()),
  );
  store.registerFactory<LoginWithGoogleProvider>(
    () => LoginWithGoogleProvider(),
  );
}



/**
 * //! Features - posts

// Bloc

  sl.registerFactory(() => PostsBloc(getAllPosts: sl()));
  sl.registerFactory(() => AddDeleteUpdatePostBloc(
      addPost: sl(), updatePost: sl(), deletePost: sl()));

// Usecases

  sl.registerLazySingleton(() => GetPostsUsecase(sl()));
  sl.registerLazySingleton(() => AddPostUsecase(sl()));
  sl.registerLazySingleton(() => DeletePostUsecase(sl()));
  sl.registerLazySingleton(() => UpdatePostUsecase(sl()));

// Repository

  sl.registerLazySingleton<PostsRepository>(() => PostsRepositoryImpl(
      remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

// Datasources

  sl.registerLazySingleton<PostRemoteDataSource>(
      () => PostRemoteDataSourceImpl());
  sl.registerLazySingleton<PostLocalDataSource>(
      () => PostLocalDataSourceImpl(sharedPreferences: sl()));

//! Core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//! External


  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => InternetConnectionChecker());
 */
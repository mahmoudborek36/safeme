import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:safeme/core/networking/api_service.dart';
import 'package:safeme/core/networking/dio_factory.dart';
import 'package:safeme/features/login/ui/loginscreen/cubit/login_cubit.dart';
import 'package:safeme/features/login/ui/loginscreen/data/repo/login_repo.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  // getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // // home
  // getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
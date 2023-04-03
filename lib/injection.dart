import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:learn_apis/my_cubit.dart';
import 'package:learn_apis/my_repo.dart';
import 'package:learn_apis/web_services.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
  //here you won't be able to know if there 's a problem in the api or in your code
  //so better do a function to let you know what happened in the api call
  // getIt.registerLazySingleton<WebServices>(()=> WebServices(Dio()));
  getIt.registerLazySingleton<WebServices>(() => WebServices(createAndSetupDio()));
  //here is the function and the new injection for the web services

}
//this function should br in webServices class or in utils class
Dio createAndSetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = Duration(seconds: 5)
    ..options.receiveTimeout = Duration(seconds: 5);
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    request: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
  ));
  return dio;
}

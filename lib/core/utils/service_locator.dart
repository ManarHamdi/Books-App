import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/Home_repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator (){
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiServices(Dio())));
}
import 'package:get_it/get_it.dart';
import 'package:portfolio/data/datasources/users.dart';
import 'package:portfolio/data/repositories_impl/user_repo_impl.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:http/http.dart' as http;

import '../presentation/home_vm.dart';

var locator = GetIt.instance;

Future<void> injectionConfig() async {


  locator.registerSingleton(http.Client());
  locator.registerLazySingleton(() => NavigationService());

  ///factories
  locator.registerFactory(() => HomeViewModel());

  locator.registerLazySingleton(() => Users(httpClient: locator()));
  locator.registerLazySingleton(() => UserRepo(dataSource: locator()));
}
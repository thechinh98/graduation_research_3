
import 'package:flutter_graduation_research_3/services/api/core/login/login_repository.dart';
import 'package:flutter_graduation_research_3/services/api/core/login/login_repository_impl.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator
      .registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl());
}

import 'package:get_it/get_it.dart';
import 'package:github_issues/services/theme_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ThemeService());
}

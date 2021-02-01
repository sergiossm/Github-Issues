import 'package:get_it/get_it.dart';
import 'package:github_issues/services/theme_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  var themeService = ThemeService();
  await themeService.init();
  locator.registerLazySingleton(() => themeService);
}

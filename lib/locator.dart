import 'package:get_it/get_it.dart';
import 'package:github_issues/services/theme_service.dart';
import 'package:github_issues/services/visited_issues_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  var prefs = await SharedPreferences.getInstance();

  locator.registerLazySingleton(() => ThemeService(prefs));
  locator.registerLazySingleton(() => VisitedIssueService(prefs));
}

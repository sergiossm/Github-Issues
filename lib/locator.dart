import 'package:get_it/get_it.dart';
import 'package:github_issues/utils.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Utils());
}

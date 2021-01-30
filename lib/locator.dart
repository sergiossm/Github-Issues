import 'package:get_it/get_it.dart';
import 'package:github_issues/services/issues_api_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => IssuesApiService.create());
}

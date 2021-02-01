import 'package:github_issues/constants/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VisitedIssueService {
  final SharedPreferences _preferences;

  VisitedIssueService(SharedPreferences prefs) : _preferences = prefs;

  List<String> get visitedIssuesList =>
      _preferences.getStringList(VISITED_ISSUES) ?? [];

  void markIssueAsVisited(String id) {
    List<String> visitedIssues =
        _preferences.getStringList(VISITED_ISSUES) ?? <String>[];

    if (!visitedIssues.contains(id)) visitedIssues.add(id);

    _preferences.setStringList(VISITED_ISSUES, visitedIssues);
  }
}

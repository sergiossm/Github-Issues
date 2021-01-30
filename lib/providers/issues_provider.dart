import 'package:flutter/cupertino.dart';
import 'package:github_issues/models/freezed_issue/freezed_issue.dart';
import 'package:github_issues/repositories/issue_repository.dart';

class IssuesProvider extends ChangeNotifier {
  IssuesProvider(this._issueRepository) {
    getIssues();
  }

  final IssueRepository _issueRepository;

  List<Issue> issues = [];

  Future<void> getIssues() async {
    try {
      issues = await _issueRepository.getIssues();
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}

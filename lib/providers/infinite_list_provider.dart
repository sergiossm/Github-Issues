import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:github_issues/constants/api.dart';
import 'package:github_issues/locator.dart';
import 'package:github_issues/models/freezed_issue/freezed_issue.dart';
import 'package:github_issues/models/freezed_issue_list/freezed_issue_list.dart';
import 'package:github_issues/services/issues_api_service.dart';

class InfiniteListProvider extends ChangeNotifier {
  bool hasMore = true;
  int itemCount = 0, length = 0, _page = 0;
  IssuesApiService _apiService;
  List<Issue> issues = [];

  InfiniteListProvider() {
    _apiService = locator<IssuesApiService>();

    fetchMore();
  }

  void fetchMore() async {
    Response response = await _apiService.getIssues(page: _page);

    var fetched =
        IssueList.fromJson({'issueList': json.decode(response.bodyString)})
            .issueList;

    hasMore = fetched.length < PER_PAGE;
    _page += 1;

    issues.addAll(fetched);

    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:github_issues/constants/api.dart';
import 'package:github_issues/locator.dart';
import 'package:github_issues/services/visited_issues_service.dart';

class HomeProvider extends ChangeNotifier {
  String filteringBy = '',
      orderingByField = 'CREATED_AT',
      orderingByDirection = 'DESC';

  void filterBy(String filterBy) {
    filteringBy = filterBy == filteringBy ? '' : filterBy;
    notifyListeners();
  }

  void orderBy(String field, String direction) {
    orderingByField = field;
    orderingByDirection = direction;
    notifyListeners();
  }

  String get query => '''
query(\$cursor: String){
  repository(name: "flutter", owner: "flutter") {
    issues(first: $PER_PAGE, after: \$cursor, orderBy: {field: $orderingByField, direction: $orderingByDirection}, filterBy: {$filteringBy}) {
      nodes {
        id
        number
        title
        state
        createdAt
        author{
          avatarUrl
          login
        }
        authorAssociation
        labels(first: 8) {
          nodes {
            name
            color
          }
        }
        comments{
          totalCount
        }
        bodyHTML
      }
      pageInfo {
        endCursor
        hasNextPage
      }
    }
  }
}
''';

  void updateVisitedIssuesList(String id) {
    locator<VisitedIssueService>().markIssueAsVisited(id);
    notifyListeners();
  }
}

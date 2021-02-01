import 'package:flutter/material.dart';
import 'package:github_issues/constants/api.dart';

class HomeProvider extends ChangeNotifier {
  String _filteringBy = '',
      _orderingByField = 'CREATED_AT',
      _orderingByDirection = 'DESC';

  void filterBy(String filterBy) {
    _filteringBy = filterBy;
    notifyListeners();
  }

  void orderBy(String field, String direction) {
    _orderingByField = field;
    _orderingByDirection = direction;
    notifyListeners();
  }

  String get query => '''
query(\$cursor: String){
  repository(name: "flutter", owner: "flutter") {
    issues(first: $PER_PAGE, after: \$cursor, orderBy: {field: $_orderingByField, direction: $_orderingByDirection}, filterBy: {$_filteringBy}) {
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
}

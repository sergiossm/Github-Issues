import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  String query = '''
query(\$cursor: String){
  repository(name: "flutter", owner: "flutter") {
    issues(first: 100, after: \$cursor, orderBy: {field: CREATED_AT, direction: DESC}) {
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

  void filterBy(String filterBy) {
    query = '''
query(\$cursor: String){
  repository(name: "flutter", owner: "flutter") {
    issues(first: 100, after: \$cursor, orderBy: {field: CREATED_AT, direction: DESC}, filterBy: {$filterBy}) {
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
    notifyListeners();
  }
}

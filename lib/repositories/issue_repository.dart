import 'package:github_issues/models/freezed_issue/freezed_issue.dart';
import 'package:github_issues/models/freezed_issue_list/freezed_issue_list.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class IssueRepository {
  final GraphQLClient _client;

  IssueRepository({GraphQLClient client}) : _client = client;

  Future<List<Issue>> getIssues() async {
    final QueryResult result =
        await _client.query(QueryOptions(documentNode: gql(query)));

    // WARNING Will crash here
    return IssueList.fromJson(result.data as Map<String, dynamic>).issueList;
  }
}

const String query = '''
query{
  repository(name: "flutter", owner: "flutter") {
    name
    description
    issues(first: 100) {
      edges {
        node {
          title
          id
        }
        cursor
      }
      pageInfo {
        endCursor
        hasNextPage
      }
    }
  }
}
''';

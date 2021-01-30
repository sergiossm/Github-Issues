import 'package:flutter/material.dart';
import 'package:github_issues/constants/api.dart';
import 'package:github_issues/models/issue/freezed_issue/freezed_issue.dart';
import 'package:github_issues/models/issue/freezed_issue_list/freezed_issue_list.dart';
import 'package:github_issues/widgets/issue_list_item.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Home extends StatelessWidget {
  FetchMoreOptions opts;

  @override
  Widget build(BuildContext context) => GraphQLProvider(
        client: ValueNotifier<GraphQLClient>(
          GraphQLClient(
            cache: InMemoryCache(),
            link: HttpLink(
              uri: 'https://api.github.com/graphql',
              headers: <String, String>{
                'Authorization': 'Bearer $GH_ACCESS_TOKEN',
              },
            ),
          ),
        ),
        child: Scaffold(
          body: Query(
            options: QueryOptions(documentNode: gql(FETCH_ISSUES_QUERY)),
            builder: (
              QueryResult result, {
              VoidCallback refetch,
              FetchMore fetchMore,
            }) {
              if (result.hasException) return Text(result.exception.toString());

              if (result.loading)
                return Center(child: CircularProgressIndicator());

              // final Map pageInfo = result.data['repository']['issues']['pageInfo'];
              // final String fetchMoreCursor = pageInfo['endCursor'];

              // opts = FetchMoreOptions(
              //   variables: {'cursor': fetchMoreCursor},
              //   updateQuery: (previousResultData, fetchMoreResultData) {
              //     // this function will be called so as to combine both the original and fetchMore results
              //     // it allows you to combine them as you would like
              //     final List<dynamic> repos = [
              //       ...previousResultData['repository']['issues']['nodes'] as List<dynamic>,
              //       ...fetchMoreResultData['repository']['issues']['nodes'] as List<dynamic>
              //     ];

              //     // to avoid a lot of work, lets just update the list of repos in returned
              //     // data with new data, this also ensures we have the endCursor already set
              //     // correctly
              //     fetchMoreResultData['repository']['issues']['nodes'] = repos;

              //     return fetchMoreResultData;
              //   },
              // );
              List<Issue> issues = IssueList.fromJson({
                'issueList': result.data['repository']['issues']['nodes']
              }).issueList;

              return ListView.builder(
                itemCount: issues.length,
                padding: EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  Issue issue = issues[index];
                  return IssueListItem(
                    number: issue.number,
                    title: issue.title,
                    createdAt: issue.createdAt,
                    open: issue.state == "OPEN",
                    labels: issue.labels.labelList,
                    nComments: issue.nComments,
                  );
                },
              );
            },
          ),
        ),
      );
}

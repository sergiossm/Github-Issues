import 'package:flutter/material.dart';
import 'package:github_issues/constants/api.dart';
import 'package:github_issues/models/issue/freezed_issue/freezed_issue.dart';
import 'package:github_issues/models/issue/freezed_issue_list/freezed_issue_list.dart';
import 'package:github_issues/providers/home_provider.dart';
import 'package:github_issues/widgets/issue_list_item.dart';
import 'package:github_issues/widgets/issue_state_icon.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GraphQLProvider(
        client: ValueNotifier<GraphQLClient>(
          GraphQLClient(
            cache: InMemoryCache(),
            link: HttpLink(
              uri: GRAPHQL_URI,
              headers: <String, String>{
                'Authorization': 'Bearer $GH_ACCESS_TOKEN',
              },
            ),
          ),
        ),
        child: Consumer<HomeProvider>(
          builder: (_, provider, __) => Scaffold(
            backgroundColor: Colors.white,
            appBar: HomeAppBar(provider),
            body: Query(
              options: QueryOptions(documentNode: gql(provider.query)),
              builder: (
                QueryResult result, {
                VoidCallback refetch,
                FetchMore fetchMore,
              }) {
                if (result.hasException)
                  return Center(
                      child: Text('Please generate a new Github Access Token'));
                else if (result.loading && (result.data?.isEmpty ?? true))
                  return Center(child: CircularProgressIndicator());

                final Map pageInfo =
                    result.data['repository']['issues']['pageInfo'];
                final String fetchMoreCursor = pageInfo['endCursor'];

                final opts = FetchMoreOptions(
                  variables: {'cursor': fetchMoreCursor},
                  updateQuery: (previousResultData, fetchMoreResultData) {
                    // this function will be called so as to combine both the original and fetchMore results
                    // it allows you to combine them as you would like
                    final List<dynamic> repos = [
                      ...previousResultData['repository']['issues']['nodes']
                          as List<dynamic>,
                      ...fetchMoreResultData['repository']['issues']['nodes']
                          as List<dynamic>
                    ];

                    // to avoid a lot of work, lets just update the list of repos in returned
                    // data with new data, this also ensures we have the endCursor already set
                    // correctly
                    fetchMoreResultData['repository']['issues']['nodes'] =
                        repos;

                    return fetchMoreResultData;
                  },
                );

                List<Issue> issues = IssueList.fromJson({
                  'issueList': result.data['repository']['issues']['nodes']
                }).issueList;
                final bool hasNextPage = pageInfo['hasNextPage'];

                return ListView.builder(
                  itemCount: issues.length + (hasNextPage ? 1 : 0),
                  padding: EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    if (index == issues.length - 20)
                      fetchMore(opts);
                    else if (index == issues.length)
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    return IssueListItem(issue: issues[index]);
                  },
                );
              },
            ),
          ),
        ),
      );
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeProvider provider;

  HomeAppBar(this.provider);

  @override
  Widget build(BuildContext context) => Hero(
        tag: AppBar,
        child: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Search',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(64),
          ),
          centerTitle: true,
          title: Text(
            'Issues',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(MdiIcons.sort, color: Colors.black54),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text(
                          'Order by',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              .copyWith(color: Colors.black45),
                        ),
                      ),
                      ListTile(
                        leading: Icon(MdiIcons.sortCalendarAscending),
                        title: Text('Date asc'),
                        onTap: () {
                          provider.orderBy('CREATED_AT', 'ASC');
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        leading: Icon(MdiIcons.sortCalendarDescending),
                        title: Text('Date desc'),
                        onTap: () {
                          provider.orderBy('CREATED_AT', 'DESC');
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        leading: Icon(MdiIcons.sortNumericAscending),
                        title: Text('Comments asc'),
                        onTap: () {
                          provider.orderBy('COMMENTS', 'ASC');
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        leading: Icon(MdiIcons.sortNumericDescending),
                        title: Text('Comments desc'),
                        onTap: () {
                          provider.orderBy('COMMENTS', 'DESC');
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(MdiIcons.filter, color: Colors.black54),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text(
                          'Filter by',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              .copyWith(color: Colors.black45),
                        ),
                      ),
                      ListTile(
                        leading: IssueStateIcon("OPEN"),
                        title: Text('Open'),
                        onTap: () {
                          provider.filterBy("states: OPEN");
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        leading: IssueStateIcon("CLOSED"),
                        title: Text('Closed'),
                        onTap: () {
                          provider.filterBy("states: CLOSED");
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      );

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 64);
}

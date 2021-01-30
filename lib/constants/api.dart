const String ISSUES = '/issues';
const int PER_PAGE = 100;
const int NEXT_PAGE_THRESHOLD = 15;
const String GH_ACCESS_TOKEN = 'f6f9dfdd1576c73f4b9e4830a0cd1e865fd9730c';
const String FETCH_ISSUES_QUERY = '''
query(\$cursor: String){
  repository(name: "flutter", owner: "flutter") {
    issues(first: 100, after: \$cursor, orderBy: {field: CREATED_AT, direction: DESC}) {
      nodes {
        id
        number
        title
        state
        createdAt
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

const String ISSUES = '/issues';
const int PER_PAGE = 100;
const int NEXT_PAGE_THRESHOLD = 15;
const String GH_ACCESS_TOKEN = 'd1ba68b219424400eb4d3c22510b3d96f2fed8cc';
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

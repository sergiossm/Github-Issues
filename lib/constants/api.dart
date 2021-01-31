const String ISSUES = '/issues';
const int PER_PAGE = 100;
const int NEXT_PAGE_THRESHOLD = 15;
const String GH_ACCESS_TOKEN = '2e2d14504209ee402571a3ba18589936bbf0f07f';
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

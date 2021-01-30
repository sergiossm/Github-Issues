const String ISSUES = '/issues';
const int PER_PAGE = 100;
const int NEXT_PAGE_THRESHOLD = 15;
const String GH_ACCESS_TOKEN = '19fcb6889a04dc0ee6202334a3612b0c62528f78';
const String FETCH_ISSUES_QUERY = '''
query(\$cursor: String){
  repository(name: "flutter", owner: "flutter") {
    issues(first: 100, after: \$cursor) {
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

import 'package:flutter/material.dart';
import 'package:github_issues/services/issues_api_service.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of<IssuesApiService>(context).getIssues(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Snapshot's data is the Response
            // You can see there's no type safety here (only List<dynamic>)
            final List issues = json.decode(snapshot.data.bodyString);
            return _buildIssues(context, issues);
          } else {
            // Show a loading indicator while waiting for the posts
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView _buildIssues(BuildContext context, List issues) {
    return ListView.builder(
      itemCount: issues.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            issues[index]['title'],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(issues[index]['body']),
        );
      },
    );
  }
}

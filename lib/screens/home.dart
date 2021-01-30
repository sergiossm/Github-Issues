import 'package:flutter/material.dart';
import 'package:github_issues/models/freezed_issue/freezed_issue.dart';
import 'package:github_issues/models/freezed_issue_list/freezed_issue_list.dart';
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
        builder: (BuildContext context, AsyncSnapshot snapshot) =>
            snapshot.connectionState == ConnectionState.done
                ? _buildIssues(IssueList.fromJson(
                        {'issueList': json.decode(snapshot.data.bodyString)})
                    .issueList)
                : Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
    );
  }

  ListView _buildIssues(List<Issue> issues) => ListView.builder(
        itemCount: issues.length,
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              issues[index].title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('#${issues[index].id}'),
          );
        },
      );
}

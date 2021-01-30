import 'package:flutter/material.dart';
import 'package:github_issues/constants/api.dart';
import 'package:github_issues/models/freezed_issue/freezed_issue.dart';
import 'package:github_issues/models/freezed_issue_list/freezed_issue_list.dart';
import 'package:github_issues/providers/infinite_list_provider.dart';
import 'package:github_issues/services/issues_api_service.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<InfiniteListProvider>(
        builder: (_, provider, __) {
          return Scaffold(
            body: provider.issues.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount:
                        provider.issues.length + (provider.hasMore ? 1 : 0),
                    padding: EdgeInsets.all(8),
                    itemBuilder: (context, index) {
                      if (index == provider.issues.length - NEXT_PAGE_THRESHOLD)
                        provider.fetchMore();
                      if (index == provider.issues.length)
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      return ListTile(
                        title: Text(
                          provider.issues[index].title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('#${provider.issues[index].id}'),
                      );
                    },
                  ),
          );
        },
      );
}

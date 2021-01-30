import 'package:flutter/material.dart';
import 'package:github_issues/providers/issues_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<IssuesProvider>(
        builder: (_, provider, __) {
          return Scaffold(
            body: provider.issues.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: provider.issues.length,
                    padding: EdgeInsets.all(8),
                    itemBuilder: (context, index) {
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

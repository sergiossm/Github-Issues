import 'package:flutter/material.dart';
import 'package:github_issues/models/issue/freezed_issue/freezed_issue.dart';
import 'package:github_issues/screens/issue_details.dart';
import 'package:github_issues/utils.dart';
import 'package:github_issues/widgets/issue_state_icon.dart';
import 'package:github_issues/widgets/labels.dart';
import 'package:github_issues/widgets/num_comments.dart';

class IssueListItem extends StatelessWidget {
  final Issue _issue;

  IssueListItem({@required Issue issue}) : _issue = issue;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => IssueDetails(issue: _issue),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 8),
              Row(
                children: [
                  IssueStateIcon(_issue.state),
                  Container(width: 8),
                  Text(
                    'flutter / flutter #${_issue.number}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: Colors.black54),
                  ),
                  Expanded(child: Container()),
                  Text(
                    utils.parseAndConvertDate(_issue.createdAt),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: Colors.black54),
                  ),
                ],
              ),
              Container(height: 8),
              Row(
                children: [
                  Container(width: 30),
                  Flexible(
                    child: Text(
                      _issue.title,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  Container(
                    width: 24,
                    child: _issue.nComments > 0
                        ? NumComments(_issue.nComments)
                        : Container(),
                  ),
                ],
              ),
              Container(height: 4),
              (_issue.labels?.labelList?.isEmpty ?? true)
                  ? Container()
                  : Labels(labels: _issue.labels.labelList),
              Container(height: 12),
              Divider(
                height: 1,
                indent: 30,
                color: Colors.black26,
              )
            ],
          ),
        ),
      );
}

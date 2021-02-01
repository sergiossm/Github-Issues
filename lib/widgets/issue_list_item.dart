import 'package:flutter/material.dart';
import 'package:github_issues/locator.dart';
import 'package:github_issues/models/issue/freezed_issue/freezed_issue.dart';
import 'package:github_issues/services/theme_service.dart';
import 'package:github_issues/utils.dart';
import 'package:github_issues/widgets/issue_state_icon.dart';
import 'package:github_issues/widgets/labels.dart';
import 'package:github_issues/widgets/num_comments.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IssueListItem extends StatelessWidget {
  final Issue _issue;
  final ThemeService _themeService = locator<ThemeService>();
  final bool _visited;
  final Function _onTap;

  IssueListItem({
    @required Issue issue,
    @required bool visited,
    @required Function onTap,
  })  : _issue = issue,
        _visited = visited,
        _onTap = onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: _onTap,
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
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: _themeService.isLight
                              ? Colors.black45
                              : Colors.white38,
                        ),
                  ),
                  Expanded(child: Container()),
                  _visited
                      ? Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            MdiIcons.eyeCheckOutline,
                            size: 16,
                          ),
                        )
                      : Container(),
                  Text(
                    utils.parseAndConvertDate(_issue.createdAt),
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: _themeService.isLight
                              ? Colors.black45
                              : Colors.white38,
                        ),
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
              )
            ],
          ),
        ),
      );
}

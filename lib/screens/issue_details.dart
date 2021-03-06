import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:github_issues/locator.dart';
import 'package:github_issues/models/issue/freezed_issue/freezed_issue.dart';
import 'package:github_issues/extensions/string_extension.dart';
import 'package:github_issues/services/theme_service.dart';
import 'package:github_issues/utils.dart';
import 'package:github_issues/widgets/issue_state_icon.dart';

class IssueDetails extends StatelessWidget {
  final Issue _issue;
  final ThemeService _themeService = locator<ThemeService>();

  IssueDetails({@required Issue issue}) : _issue = issue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailsAppBar(
        issue: _issue,
        isThemeLight: _themeService.isLight,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(height: 16),
            Row(
              children: [
                _issue.author.avatarUrl != null
                    ? CircleAvatar(
                        backgroundImage: NetworkImage(_issue.author.avatarUrl),
                        backgroundColor: Colors.transparent,
                      )
                    : CircleAvatar(
                        backgroundColor: Colors.blueAccent.withOpacity(0.45),
                        child: Text(
                          _issue.author.login.capitalize().first(),
                        ),
                      ),
                Container(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          _issue.author.login,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        Text(
                          " · ${utils.parseAndConvertDate(_issue.createdAt)}",
                          style: Theme.of(context).textTheme.subtitle2.copyWith(
                                color: _themeService.isLight
                                    ? Colors.black45
                                    : Colors.white38,
                              ),
                        ),
                      ],
                    ),
                    Container(height: 3),
                    _issue.authorAssociation != "NONE"
                        ? Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: _themeService.isLight
                                  ? Colors.black12
                                  : Colors.white10,
                              border: Border.all(
                                width: 1.5,
                                color: _themeService.isLight
                                    ? Colors.black38
                                    : Colors.white24,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                            ),
                            child: Text(
                              _issue.authorAssociation.capitalize(),
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
            Container(height: 16),
            HtmlWidget(_issue.bodyHTML),
          ],
        ),
      )),
    );
  }
}

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailsAppBar({
    @required Issue issue,
    @required bool isThemeLight,
  })  : _issue = issue,
        _isThemeLight = isThemeLight;

  final Issue _issue;
  final bool _isThemeLight;

  @override
  Widget build(BuildContext context) => Hero(
        tag: AppBar,
        child: AppBar(
          iconTheme:
              IconThemeData(color: _isThemeLight ? Colors.black87 : null),
          backgroundColor: _isThemeLight ? Colors.white : null,
          bottom: PreferredSize(
            child: Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'flutter',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        ' / ',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        'flutter',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(' #${_issue.number}',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: _isThemeLight
                                    ? Colors.black54
                                    : Colors.white54,
                              )),
                    ],
                  ),
                  Container(height: 12),
                  Text(
                    _issue.title,
                    style: Theme.of(context).textTheme.headline6,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color:
                          (_issue.state == "OPEN" ? Colors.green : Colors.red)
                              .withOpacity(0.06),
                      border: Border.all(
                          width: 1.5,
                          color: (_issue.state == "OPEN"
                                  ? Colors.green
                                  : Colors.red)
                              .withOpacity(0.12)),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IssueStateIcon(_issue.state),
                        Container(width: 4),
                        Text(
                          _issue.state.capitalize(),
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                color: _issue.state == "OPEN"
                                    ? Colors.green
                                    : Colors.red,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(88),
          ),
        ),
      );

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 128);
}

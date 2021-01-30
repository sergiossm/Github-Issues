import 'package:flutter/material.dart';
import 'package:github_issues/models/label/freezed_label/freezed_label.dart';
import 'package:github_issues/widgets/labels.dart';
import 'package:github_issues/widgets/num_comments.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class IssueListItem extends StatelessWidget {
  final int number, nComments;
  final String title, createdAt;
  final bool open;
  final List<Label> labels;

  IssueListItem({
    @required this.number,
    @required this.title,
    @required this.createdAt,
    @required this.open,
    this.labels,
    this.nComments = 0,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(
                  open
                      ? MdiIcons.alertCircleOutline
                      : MdiIcons.alertCircleCheckOutline,
                  color: open ? Colors.green : Colors.red,
                  size: 20,
                ),
                Container(width: 8),
                Text(
                  'flutter / flutter #$number',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.black54),
                ),
                Expanded(child: Container()),
                Text(
                  _parseAndConvertDate,
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
                    title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Container(
                  width: 24,
                  child: nComments > 0 ? NumComments(nComments) : Container(),
                ),
              ],
            ),
            Container(height: 4),
            (labels?.isEmpty ?? true) ? Container() : Labels(labels: labels),
            Container(height: 12),
            Divider(
              height: 1,
              indent: 30,
              color: Colors.black26,
            )
          ],
        ),
      );

  String get _parseAndConvertDate {
    var date = DateTime.parse(createdAt);
    return timeago.format(date, locale: 'en_short');
  }
}

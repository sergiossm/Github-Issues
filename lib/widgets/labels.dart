import 'package:flutter/material.dart';
import 'package:github_issues/models/label/freezed_label/freezed_label.dart';

class Labels extends StatelessWidget {
  const Labels({
    Key key,
    @required this.labels,
  }) : super(key: key);

  final List<Label> labels;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 30),
        Flexible(
          child: Wrap(
              children: labels.map((label) {
            var backgroundColor = Color(int.parse('0xFF${label.color}'));
            var foregroundColor = backgroundColor.computeLuminance() > 0.5
                ? Colors.black87
                : Colors.white;

            return Container(
              margin: EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(
                  label.name,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: foregroundColor),
                ),
              ),
            );
          }).toList()),
        ),
        Container(width: 20),
      ],
    );
  }
}

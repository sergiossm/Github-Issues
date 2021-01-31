import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IssueStateIcon extends StatelessWidget {
  final String state;

  const IssueStateIcon(this.state);

  @override
  Widget build(BuildContext context) {
    bool open = state == "OPEN";

    return Icon(
      open ? MdiIcons.alertCircleOutline : MdiIcons.alertCircleCheckOutline,
      color: open ? Colors.green : Colors.red,
      size: 20,
    );
  }
}

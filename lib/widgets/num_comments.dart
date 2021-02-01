import 'package:flutter/material.dart';
import 'package:github_issues/locator.dart';
import 'package:github_issues/services/theme_service.dart';

class NumComments extends StatelessWidget {
  final int nComments;
  final ThemeService _themeService = locator<ThemeService>();

  NumComments(this.nComments);

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        width: 20,
        height: 24,
        decoration: BoxDecoration(
          color: _themeService.isLight
              ? Colors.black.withOpacity(0.06)
              : Colors.white.withOpacity(0.06),
          border: Border.all(
            width: 1.5,
            color: _themeService.isLight ? Colors.black12 : Colors.white10,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Text(
          nComments.toString(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
      );
}

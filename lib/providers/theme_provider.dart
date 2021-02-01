import 'package:flutter/material.dart';
import 'package:github_issues/enums/enums.dart';

class ThemeProvider extends ChangeNotifier {
  Themes theme = Themes.LIGHT;

  void toggleTheme() {
    theme = theme == Themes.LIGHT ? Themes.DARK : Themes.LIGHT;
    notifyListeners();
  }
}

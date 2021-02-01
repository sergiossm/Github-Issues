import 'dart:async';

import 'package:github_issues/constants/shared_preferences.dart';
import 'package:github_issues/enums/enums.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService {
  Stream<bool> get lightTheme => _lightThemeController.stream;
  final _lightThemeController = BehaviorSubject<bool>.seeded(true);
  bool get isLight => _lightThemeController.value;

  ThemeService();

  Future<void> init() async {
    _lightThemeController.add(
      (await SharedPreferences.getInstance()).getString(THEME) ==
              Themes.LIGHT.toString() ??
          true,
    );
  }

  void toggle() {
    _lightThemeController.add(!_lightThemeController.value);
    SharedPreferences.getInstance().then(
      (prefs) => prefs.setString(
        THEME,
        (_lightThemeController.value ? Themes.LIGHT : Themes.DARK).toString(),
      ),
    );
  }

  void dispose() {
    _lightThemeController.close();
  }
}

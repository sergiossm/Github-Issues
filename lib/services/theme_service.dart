import 'dart:async';

import 'package:rxdart/rxdart.dart';

class ThemeService {
  Stream<bool> get lightTheme => _lightThemeController.stream;
  final _lightThemeController = BehaviorSubject<bool>.seeded(true);

  bool get isLight => _lightThemeController.value;

  void toggle() {
    _lightThemeController.add(!_lightThemeController.value);
  }

  void dispose() {
    _lightThemeController.close();
  }
}

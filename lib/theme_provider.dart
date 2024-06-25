// lib/theme_provider.dart
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _mode = ThemeMode.system;

  ThemeMode get mode => _mode;

  void setThemeMode(ThemeMode mode) {
    _mode = mode;
    notifyListeners();
  }
}

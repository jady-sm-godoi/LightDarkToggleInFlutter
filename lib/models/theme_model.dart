import 'package:flutter/material.dart';

///Aqui a alteração do valor de isDark é notificada para toda a aplicação
class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  ThemePreferences _preferences = ThemePreferences();
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }

  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
}

class ThemePreferences {
  bool darkTheme = false;

  setTheme(bool value) {
    darkTheme = value;
  }

  getTheme() {
    return darkTheme;
  }
}

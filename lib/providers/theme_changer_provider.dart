
import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier{

  ThemeMode _currentThemeMode = ThemeMode.system;

  ThemeMode get currentThemeMode => _currentThemeMode;

  void changeThemeMode(themeMode){

    _currentThemeMode = themeMode;
    notifyListeners();
  }
}
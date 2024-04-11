import 'package:beat_buddy/theme/dark_theme.dart';
import 'package:beat_buddy/theme/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  //Initially light mode.
  ThemeData _themeData = lightMode;

  //get theme
  ThemeData get themeData => _themeData;

  //is Dark mode
  bool get isDarkMode => _themeData == darkMode;

  //set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    //update the ui
    notifyListeners();

    //toggletheme
    void toggleTheme() {
      if (_themeData == lightMode) {
        themeData = darkMode; 
      }else {
        themeData = lightMode;
      }
      }
    }
  }


import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/darkmode.dart';
import 'package:food_delivery_app/themes/lightmode.dart';

class ThemeSwitcher with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themedata => _themeData;
  bool get isDarKMode => _themeData == darkMode;

  set themedata(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightMode){
      themedata = darkMode;
    } else{
      themedata = lightMode;
    }
  }
}
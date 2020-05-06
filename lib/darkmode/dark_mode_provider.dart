import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterchallenge/constant.dart';

class DarkModeProvider with ChangeNotifier {
  /// 夜间模式 0: 关闭 1: 开启 2: 随系统
  int _darkMode;

  int get darkMode => _darkMode;

  void changeMode(int darkMode) async {
    _darkMode = darkMode;

    notifyListeners();
    SpUtil.putInt(SpConstant.DARK_MODE, darkMode);
  }
}
